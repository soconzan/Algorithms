def dfs(graph, i, j, cnt) -> int:
    graph[i][j] = 0
    nis = [1, -1, 0, 0]
    njs = [0, 0, 1, -1]
    for ni, nj in zip(nis, njs):
        if 0 <= i + ni < N and 0 <= j + nj < N and graph[i + ni][j + nj] == 1:
            cnt = dfs(graph, i + ni, j + nj, cnt)
    return cnt + 1


N = int(input())

graph = [[] for _ in range(N)]

for i in range(N):
    graph[i] = [int(j) for j in input()]

links = []

i = j = 0
for i in range(N):
    for j in range(N):
        if graph[i][j] == 1:
            links.append(dfs(graph, i, j, 0))

links.sort()
print(len(links))
for i in links:
    print(i)