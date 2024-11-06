from collections import deque

N = int(input())
dq = deque()

for i in range(N):
  dq.append(i+1)

while len(dq) > 1:
  dq.popleft()
  dq.append(dq.popleft())

print(dq.pop())