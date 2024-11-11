def findNum(n: int, A:list, start:int, end:int):
  mid = (start + end) // 2
  if n == A[mid]:
    return 1
  if start >= end:
    return 0
  if n >= A[mid]:
    return findNum(n, A, mid + 1, end)
  if n < A[mid]:
    return findNum(n, A, start, mid - 1)

N = int(input())
A = sorted(list(map(int, input().split())))
M = int(input())
li = list(map(int, input().split()))

for i in li:
  print(findNum(i, A, 0, N-1))