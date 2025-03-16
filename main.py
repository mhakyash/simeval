import argparse
import logging
from scripts.ast_similarity import VerilogASTProcessor
from scripts.cfg_similarity import VerilogCFGProcessor
from scripts.netlist_similarity import compute_netlist_similarity

# Configure logging format globally
logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")

def main():
    parser = argparse.ArgumentParser(description="Compare Verilog files using AST, CFG, or Netlist similarity.")
    parser.add_argument("file1", type=str, help="Path to first Verilog file")
    parser.add_argument("file2", type=str, help="Path to second Verilog file")
    parser.add_argument("--method", choices=["ast", "cfg", "netlist"], required=True, help="Comparison method")
    parser.add_argument("--depth", type=int, default=2, help="Depth for AST subtree comparison")
    parser.add_argument("--n_iter", type=int, default=5, help="Number of iterations for Weisfeiler-Lehman kernel (CFG comparison)")
    parser.add_argument("--log_level", choices=["DEBUG", "INFO", "WARNING", "ERROR"], default="INFO", help="Set logging level")

    args = parser.parse_args()

    # Apply logging level
    logging.getLogger().setLevel(getattr(logging, args.log_level))

    logging.info(f"Comparing {args.file1} and {args.file2} using {args.method.upper()} method...")
    
    if args.method == "ast":
        ast_processor = VerilogASTProcessor(depth=args.depth, log_level=getattr(logging, args.log_level))
        
        logging.info("Parsing ASTs for both Verilog files...")
        ast1 = ast_processor.parse_verilog_code(args.file1)
        ast2 = ast_processor.parse_verilog_code(args.file2)

        if ast1 and ast2:
            logging.info("Normalizing ASTs...")
            norm_ast1 = ast_processor.normalize_ast(ast1)
            norm_ast2 = ast_processor.normalize_ast(ast2)

            logging.info("Computing AST similarity...")
            score = ast_processor.compare_subtrees(norm_ast1, norm_ast2)
        else:
            logging.error("Error: One or both Verilog files could not be parsed.")
            return
    
    elif args.method == "cfg":
        cfg_processor = VerilogCFGProcessor(n_iter=args.n_iter, log_level=getattr(logging, args.log_level))
        
        logging.info("Generating CFGs for both Verilog files...")
        cfg1 = cfg_processor.create_cfg(args.file1)
        cfg2 = cfg_processor.create_cfg(args.file2)

        if cfg1 and cfg2:
            logging.info("Computing CFG similarity...")
            score = cfg_processor.compute_cfg_similarity(cfg1, cfg2)
        else:
            logging.error("Error: One or both CFGs could not be generated.")
            return
    
    else:  # Netlist comparison
        logging.info("Generating Netlists for both Verilog files...")
        net1 = VerilogCFGProcessor().create_cfg(args.file1)  # Assuming CFG format is similar to Netlist
        net2 = VerilogCFGProcessor().create_cfg(args.file2)

        if net1 and net2:
            logging.info("Computing Netlist similarity...")
            score = compute_netlist_similarity(net1, net2)
        else:
            logging.error("Error: One or both Netlists could not be generated.")
            return

    print(f"Similarity Score ({args.method.upper()}): {score:.6f}")

if __name__ == "__main__":
    main()
