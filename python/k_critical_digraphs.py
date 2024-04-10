import networkx as nx
import matplotlib.pyplot as plt

def sparse_k_critical_digraph(k, num_vertices):
    """
    Constructs a sparse k-critical digraph based on the provided parameters.

    Parameters:
    - k (int): The parameter defining the k-criticality of the digraph.
    - num_vertices (int): The number of vertices in the digraph.

    Returns:
    - D (DiGraph): Sparse k-critical digraph.
    """
    D = nx.DiGraph()
    for i in range(num_vertices):
        for j in range(i+1, num_vertices):
            if i % k == j % k:
                D.add_edge(i, j)
                D.add_edge(j, i)  # Adding reverse edge
    return D

def dense_k_critical_digraph(k, num_vertices):
    """
    Constructs a dense k-critical digraph based on the provided parameters.

    Parameters:
    - k (int): The parameter defining the k-criticality of the digraph.
    - num_vertices (int): The number of vertices in the digraph.

    Returns:
    - D (DiGraph): Dense k-critical digraph.
    """
    D = nx.DiGraph()
    for i in range(num_vertices):
        for j in range(num_vertices):
            if i != j and (i + 1) % k == j % k:
                D.add_edge(i, j)
    return D

def visualize_digraph(D, title):
    """
    Visualizes the provided digraph with the given title.

    Parameters:
    - D (DiGraph): The digraph to visualize.
    - title (str): The title of the plot.
    """
    nx.draw(D, with_labels=True)
    plt.title(title)
    plt.show()
