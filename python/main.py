import graph_analysis

## definingg the graph, experiment around

if __name__ == "__main__":
    # Parameters
    k = 3
    num_vertices = 10

    # Constructing and visualizing k-critical digraphs
    sparse_D = k_critical_digraphs.sparse_k_critical_digraph(k, num_vertices)
    dense_D = k_critical_digraphs.dense_k_critical_digraph(k, num_vertices)

    k_critical_digraphs.visualize_digraph(sparse_D, 'Sparse k-critical digraph')
    k_critical_digraphs.visualize_digraph(dense_D, 'Dense k-critical digraph')

    # Analyzing edge density
    sparse_edges, dense_edges = graph_analysis.analyze_edge_density(k, num_vertices)
    print("Number of edges in sparse digraph:", sparse_edges)
    print("Number of edges in dense digraph:", dense_edges)
