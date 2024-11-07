import sys

K, N = map(int, input().split())
lines = [int(sys.stdin.readline()) for i in range(K)]

s, e = 1, sum(lines) // N
mid = (s + e) // 2

while s <= e:
  total = sum([i // mid for i in lines])
  if total >= N:
    s = mid + 1
  else:
    e = mid - 1
  mid = (s + e) // 2

print(mid)