using LightGraphs
using GraphPlot

function sparse_k_critical_digraph(k::Int, num_vertices::Int)
    """
    Constructs a sparse k-critical digraph based on the provided parameters.

    Parameters:
    - k (Int): The parameter defining the k-criticality of the digraph.
    - num_vertices (Int): The number of vertices in the digraph.

    Returns:
    - D (DiGraph): Sparse k-critical digraph.
    """
    D = SimpleDiGraph(num_vertices)
    for i in 1:num_vertices
        for j in i+1:num_vertices
            if i % k == j % k
                add_edge!(D, i, j)
                add_edge!(D, j, i)  # Adding reverse edge
            end
        end
    end
    return D
end

function dense_k_critical_digraph(k::Int, num_vertices::Int)
    """
    Constructs a dense k-critical digraph based on the provided parameters.

    Parameters:
    - k (Int): The parameter defining the k-criticality of the digraph.
    - num_vertices (Int): The number of vertices in the digraph.

    Returns:
    - D (DiGraph): Dense k-critical digraph.
    """
    D = SimpleDiGraph(num_vertices)
    for i in 1:num_vertices
        for j in 1:num_vertices
            if i != j && (i + 1) % k == j % k
                add_edge!(D, i, j)
            end
        end
    end
    return D
end

function visualize_digraph(D, title)
    """
    Visualizes the provided digraph with the given title.

    Parameters:
    - D (DiGraph): The digraph to visualize.
    - title (String): The title of the plot.
    """
    gplot(D, layout=GraphPlot.circular_layout, nodelabel=1:nv(D), nodelabeldist=1.5, nodecolor=:lightblue, edgecolor=:gray, edgelinewidth=1, arrow=true)
    title!(title)
end
