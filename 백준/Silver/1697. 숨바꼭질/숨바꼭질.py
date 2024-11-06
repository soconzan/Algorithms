from collections import deque

N, K = map(int, input().split())
max = N if N >= K else K * 2
Q = deque()
dist = 0
visited = set()
visited.add(N)

while N != K:
    # print(N)

    if N < K:
        if N + 1 not in visited:
            Q.append([N + 1, dist + 1])
            visited.add(N + 1)
        if N * 2 not in visited:
            Q.append([N * 2, dist + 1])
            visited.add(N * 2)

    if N - 1 not in visited:
        Q.append([N - 1, dist + 1])
        visited.add(N - 1)

    N, dist = map(int, Q.popleft())

print(dist)