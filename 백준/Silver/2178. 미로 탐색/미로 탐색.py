N, M = map(int, input().split())

miro = [[] for i in range(N)]
for i in range(N):
    miro[i] = [int(i) for i in input()]
visit = [[not i for i in row] for row in miro]

x, y = 0, 0

dxs = [1, 0, -1, 0]
dys = [0, 1, 0, -1]

Qx, Qy = [], []

visit[x][y] = True

while not visit[-1][-1]:
    for dx, dy in zip(dxs, dys):
        if 0 <= y + dy < N and 0 <= x + dx < M and not visit[y + dy][x + dx]:
            Qx.append(x + dx)
            Qy.append(y + dy)
            miro[y + dy][x + dx] += miro[y][x]
            visit[y + dy][x + dx] = True

    x = Qx.pop(0)
    y = Qy.pop(0)

print(miro[-1][-1])