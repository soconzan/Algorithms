from collections import deque

V = int(input())

ad = [[] for i in range(V)]
visit = [False for i in range(V)]

for i in range(int(input())):
    v, e = map(int, input().split())
    ad[v - 1].append(e - 1)
    ad[e - 1].append(v - 1)

Q = deque()
Q.append(0)
visit[0] = True

while len(Q) != 0:
    v = Q.popleft()
    for i in ad[v]:
        if not visit[i]:
            Q.append(i)
            visit[i] = True

print(sum(visit) - 1)