using LightGraphs
using k_critical_digraphs

function num_edges(D)
    """
    Calculates the number of edges in the provided digraph.

    Parameters:
    - D (DiGraph): The digraph.

    Returns:
    - Int: Number of edges in the digraph.
    """
    return ne(D)
end

function analyze_edge_density(k::Int, num_vertices::Int)
    """
    Analyzes the edge density problem for directed graphs.

    Constructs sparse and dense k-critical digraphs and calculates the number of edges.

    Parameters:
    - k (Int): The parameter defining the k-criticality of the digraphs.
    - num_vertices (Int): The number of vertices in the digraphs.

    Returns:
    - num_edges_sparse (Int): Number of edges in the sparse k-critical digraph.
    - num_edges_dense (Int): Number of edges in the dense k-critical digraph.
    """
    sparse_D = sparse_k_critical_digraph(k, num_vertices)
    dense_D = dense_k_critical_digraph(k, num_vertices)

    num_edges_sparse = num_edges(sparse_D)
    num_edges_dense = num_edges(dense_D)

    return num_edges_sparse, num_edges_dense
end
