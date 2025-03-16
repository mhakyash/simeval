import networkx as nx

def nx_to_grakel(cfg):
    mapping = {old_id: new_id for new_id, old_id in enumerate(cfg.nodes())}
    cfg = nx.relabel_nodes(cfg, mapping)
    edges = list(cfg.edges)
    node_labels = nx.get_node_attributes(cfg, 'label')
    return (edges, node_labels)
