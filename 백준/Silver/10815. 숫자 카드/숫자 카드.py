N = int(input())
Ns = sorted(list(map(int, input().split())))
M = int(input())
Ms = list(map(int, input().split()))

for i in Ms:
  start = 0
  end = N - 1
  result = 0
  while start <= end:
    mid = (start + end) // 2
    if i == Ns[mid]:
      result = 1
      break
    if i > Ns[mid]:
      start = mid + 1
    if i < Ns[mid]:
      end = mid - 1
  print(result, end=' ')