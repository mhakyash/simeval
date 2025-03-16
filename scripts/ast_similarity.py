import pyverilog.vparser.parser as pvparser
import pyverilog.vparser.ast as vast
from difflib import SequenceMatcher
import logging
import hashlib
import random
import numpy as np
from typing import List, Dict, Any, Optional

# Set a fixed seed to ensure deterministic behavior
random.seed(42)
np.random.seed(42)

# Configure logging
logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")

class VerilogASTProcessor:
    """
    Handles Verilog AST processing, including parsing, normalization, and subtree similarity comparison.
    """

    def __init__(self, depth: int = 2, log_level=logging.INFO):

        self.depth = depth
        logging.getLogger().setLevel(log_level)

    def parse_verilog_code(self, file_path: str) -> Optional[vast.Source]:

        try:
            logging.info(f"Parsing Verilog file: {file_path}")
            ast, _ = pvparser.parse([file_path])
            return ast
        except Exception as e:
            logging.error(f"Error parsing Verilog file: {file_path}. Exception: {e}")
            return None

    def normalize_ast(self, ast: vast.Source) -> vast.Source:

        def normalize_node(node: Any, name_map: Dict[str, str]) -> None:
            """Recursively normalizes AST nodes."""
            if isinstance(node, vast.Identifier):
                if node.name not in name_map:
                    name_map[node.name] = f"var_{len(name_map)}"
                node.name = name_map[node.name]

            for child in sorted(node.children(), key=lambda x: hashlib.sha256(str(x).encode()).hexdigest()):
                normalize_node(child, name_map)

        logging.info("Starting AST normalization...")
        name_map = {}
        normalize_node(ast, name_map)
        logging.info("AST normalization complete.")
        return ast

    def compare_subtrees(self, ast1: vast.Source, ast2: vast.Source) -> float:

        def get_subtree_nodes(node: Any, current_depth: int) -> List[Any]:
            """Recursively extracts subtree nodes up to a given depth."""
            if current_depth == 0:
                return [node]

            nodes = []
            for child in sorted(node.children(), key=lambda x: hashlib.sha256(str(x).encode()).hexdigest()):
                nodes.extend(get_subtree_nodes(child, current_depth - 1))
            return nodes

        logging.info(f"Extracting subtrees up to depth {self.depth}...")
        subtrees1 = get_subtree_nodes(ast1, self.depth)
        subtrees2 = get_subtree_nodes(ast2, self.depth)

        if not subtrees1 or not subtrees2:
            logging.warning("One or both ASTs have no valid subtrees for comparison.")
            return 0.0

        similarity_scores = [
            max(SequenceMatcher(None, str(node1), str(node2)).ratio() for node2 in subtrees2)
            for node1 in subtrees1
        ]

        avg_similarity = round(sum(similarity_scores) / len(similarity_scores), 6) if similarity_scores else 0.0
        logging.info(f"Computed average subtree similarity: {avg_similarity:.6f}")
        return avg_similarity
