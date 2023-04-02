class Graph:
    adj = []

    def __init__(self, v, e):
        self.v = v
        self.e = e
        Graph.adj = [[0 for i in range(v)] for j in range(v)]

    def addEdge(self, start, e):
        Graph.adj[start][e] = 1
        Graph.adj[e][start] = 1

    def DFS(self, start, visited):
        print(start, end = ' ')

        visited[start] = True

        for i in range(self.v):
            if (Graph.adj[start][i] == 1) and (not visited[i]):
                self.DFS(i, visited)

    def print_matrix(self):
        print(Graph.adj)

v, e = 5, 4

G = Graph(v, e)
G.addEdge(0, 1)
G.addEdge(0, 2)
G.addEdge(0, 3)
G.addEdge(0, 4)
# G.print_matrix()

G.DFS(1, [False] * v)