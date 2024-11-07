N, K = map(int,input().split())

lst = [i+1 for i in range(N)]
ans = []
idx = 0

for i in range(N):
  idx = (idx + K - 1) % len(lst)
  ans.append(lst.pop(idx))

print('<' + ', '.join(map(str, ans)) + '>')