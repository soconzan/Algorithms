from collections import deque

N, M = map(int, input().split())
targets = list(map(int, input().split()))

deq = deque([i+1 for i in range(N)])
ans = 0

for t in targets:
  r = deq.index(t)
  ans += r if r < len(deq) / 2 else len(deq) - r
  deq.rotate(-r)
  deq.popleft()

print(ans)