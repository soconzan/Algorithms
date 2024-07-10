from collections import deque

N, K = map(int, input().split())
Q = deque()
d = 1

while N != K:
    print(N, end=" - ")
    if N < K:
        Q.append(N * 2)
        Q.append(N + 1)
    Q.append(N - 1)
    N = Q.popleft()

print()
print(*Q)
print(t)
