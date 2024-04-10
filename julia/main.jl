using graph_analysis

# Parameters
k = 3
num_vertices = 10

# Constructing and visualizing k-critical digraphs
sparse_D = sparse_k_critical_digraph(k, num_vertices)
dense_D = dense_k_critical_digraph(k, num_vertices)

visualize_digraph(sparse_D, "Sparse k-critical digraph")
visualize_digraph(dense_D, "Dense k-critical digraph")

# Analyzing edge density
sparse_edges, dense_edges = analyze_edge_density(k, num_vertices)
println("Number of edges in sparse digraph: ", sparse_edges)
println("Number of edges in dense digraph: ", dense_edges)
