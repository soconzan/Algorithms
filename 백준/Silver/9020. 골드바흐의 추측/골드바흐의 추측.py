prime = []
for i in range(2,10000):
  isPrime = True
  for j in range(2,i):
    if i%j==0:
      isPrime = False
      break
  if isPrime:
    prime.append(i)

T = int(input())

for i in range(T):
  n = int(input())
  for j in range(n//2, 1, -1):
    if j in prime and n-j in prime:
      print('%d %d' % (j, n-j))
      break