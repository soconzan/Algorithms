N, M = map(int, input().split())
trees = list(map(int, input().split()))

low, s, e = 0, 0, max(trees)

while s <= e:
  mid = (s + e) // 2
  total = sum([i - mid for i in trees if i > mid])
  if total >= M:
    low = mid
    s = mid + 1
  else:
    e = mid - 1

print(low)