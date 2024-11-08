from queue import Queue

def dfs(vertexes, visited, start):
    visited[start] = True
    print(start + 1, end=' ')
    for vertex in vertexes[start]:
        if visited[vertex] == False:
            dfs(vertexes, visited, vertex)

def bfs(vertexes, visited, queue):
    while not queue.empty():
        start = queue.get()
        if visited[start] == False:
            visited[start] = True
            print(start + 1, end=' ')
        for vertex in vertexes[start]:
            if visited[vertex] == False:
                queue.put(vertex)
                visited[vertex] = True
                print(vertex + 1, end=' ')

N, M, V = map(int, input().split())

vertexes = [[] for i in range(N)]
visited = [False] * N
queue = Queue()

for i in range(M):
    a, b = map(int, input().split())
    vertexes[a - 1].append(b - 1)
    vertexes[b - 1].append(a - 1)

for vertex in vertexes:
    vertex.sort()

dfs(vertexes, visited, V - 1)

print()
visited = [False] * N
queue.put(V - 1)
bfs(vertexes, visited, queue)
