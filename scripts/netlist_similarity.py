import subprocess
import os
from grakel import GraphKernel
import scripts.utils as utils

def verilog_to_netlist(verilog_file, output_netlist):
    """ Converts a Verilog file into a netlist using Yosys. """
    yosys_script = f"""
    read_verilog {verilog_file}
    synth -top top
    write_blif {output_netlist}
    """
    
    yosys_command = ["yosys", "-p", yosys_script]
    
    try:
        subprocess.run(yosys_command, check=True, text=True, capture_output=True)
    except subprocess.CalledProcessError as e:
        print("Error running Yosys:", e.stderr)
        exit(1)

def compute_netlist_similarity(net1, net2):
    gk = GraphKernel(kernel={"name": "shortest_path"}, normalize=True)
    graphs = [utils.nx_to_grakel(net1), utils.nx_to_grakel(net2)]
    K = gk.fit_transform(graphs)
    return K[0, 1]
