import networkx as nx
from pyverilog.vparser.parser import parse
from grakel import GraphKernel
import scripts.utils as utils
import logging
from typing import Optional

# Configure logging
logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")

class VerilogCFGProcessor:
    """
    A class to handle Verilog Control Flow Graph (CFG) generation and similarity computation.
    """

    def __init__(self, n_iter: int = 5, log_level=logging.INFO):
        self.n_iter = n_iter
        logging.getLogger().setLevel(log_level)

    def create_cfg(self, file_path: str) -> Optional[nx.DiGraph]:

        try:
            logging.info(f"Parsing Verilog file: {file_path}")
            ast, _ = parse([file_path])
            cfg = nx.DiGraph()

            def traverse(node, parent=None):
                if node is not None:
                    node_id = id(node)
                    cfg.add_node(node_id, label=type(node).__name__)
                    if parent is not None:
                        cfg.add_edge(parent, node_id)
                    for child in sorted(node.children(), key=lambda x: str(type(x).__name__)):  # Sorting for consistency
                        traverse(child, node_id)

            logging.info("Building CFG from AST...")
            for child in ast.children():
                traverse(child)

            logging.info("CFG construction complete.")
            return cfg
        except Exception as e:
            logging.error(f"Error generating CFG for {file_path}. Exception: {e}")
            return None

    def compute_cfg_similarity(self, cfg1: nx.DiGraph, cfg2: nx.DiGraph) -> float:

        try:
            logging.info("Converting NetworkX CFGs to Grakel format...")
            graphs = [utils.nx_to_grakel(cfg1), utils.nx_to_grakel(cfg2)]
            
            logging.info(f"Computing CFG similarity using Weisfeiler-Lehman kernel (n_iter={self.n_iter})...")
            gk = GraphKernel(kernel={"name": "weisfeiler_lehman", "n_iter": self.n_iter}, normalize=True)
            K = gk.fit_transform(graphs)

            similarity_score = round(K[0, 1], 6)
            logging.info(f"Computed CFG similarity: {similarity_score:.6f}")
            return similarity_score
        except Exception as e:
            logging.error(f"Error computing CFG similarity. Exception: {e}")
            return 0.0
