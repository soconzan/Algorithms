N = int(input())
Ns = list(map(int, input().split()))
M = int(input())
Ms = list(map(int, input().split()))

Nd = {}
for n in Ns:
  if n in Nd:
    Nd[n] += 1
  else:
    Nd[n] = 1

for i in Ms:
  if i in Nd:
    print(Nd[i], end=' ')
  else:
    print(0, end=' ')