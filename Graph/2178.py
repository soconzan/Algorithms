# def printMiro(miro):
#     for i in miro:
#         for j in i:
#             print(j, end=' ')
#         print()
#     print("------")

from collections import deque

N, M = map(int, input().split())

miro = [[] for i in range(N)]
for i in range(N):
    miro[i] = [int(i) for i in input()]

dxs = [1, 0, -1, 0]
dys = [0, 1, 0, -1]

x, y = 0, 0
Q = deque()

while x != M - 1 or y != N - 1:
    for dx, dy in zip(dxs, dys):
        if 0 <= y + dy < N and 0 <= x + dx < M and miro[y + dy][x + dx] == 1:
            Q.append([x + dx, y + dy])
            miro[y + dy][x + dx] += miro[y][x]
    x, y = map(int, Q.popleft())

print(miro[-1][-1])