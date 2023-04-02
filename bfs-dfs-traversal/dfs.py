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

v, e = 7, 10

G = Graph(v, e)
G.addEdge(0, 1)
G.addEdge(0, 5)
G.addEdge(1, 0)
G.addEdge(1, 2)
G.addEdge(1, 6)
G.addEdge(2, 1)
G.addEdge(2, 3)
G.addEdge(2, 6)
G.addEdge(3, 2)
G.addEdge(3, 4)
G.addEdge(4, 3)
G.addEdge(4, 5)
G.addEdge(4, 6)
G.addEdge(5, 0)
G.addEdge(5, 4)
G.addEdge(5, 6)
G.addEdge(6, 1)
G.addEdge(6, 2)
G.addEdge(6, 4)
G.addEdge(6, 5)

G.print_matrix()

G.DFS(0, [False] * v)