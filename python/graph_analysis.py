import networkx as nx
import k_critical_digraphs

def num_edges(D):
    """
    Calculates the number of edges in the provided digraph.

    Parameters:
    - D (DiGraph): The digraph.

    Returns:
    - int: Number of edges in the digraph.
    """
    return D.number_of_edges()

def analyze_edge_density(k, num_vertices):
    """
    Analyzes the edge density problem for directed graphs.

    Constructs sparse and dense k-critical digraphs and calculates the number of edges.

    Parameters:
    - k (int): The parameter defining the k-criticality of the digraphs.
    - num_vertices (int): The number of vertices in the digraphs.

    Returns:
    - num_edges_sparse (int): Number of edges in the sparse k-critical digraph.
    - num_edges_dense (int): Number of edges in the dense k-critical digraph.
    """
    sparse_D = k_critical_digraphs.sparse_k_critical_digraph(k, num_vertices)
    dense_D = k_critical_digraphs.dense_k_critical_digraph(k, num_vertices)

    num_edges_sparse = num_edges(sparse_D)
    num_edges_dense = num_edges(dense_D)

    return num_edges_sparse, num_edges_dense
