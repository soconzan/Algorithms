def cantor(n: int) -> str:
    if n == 1:
        return '-'
    return cantor(n//3) + ' ' * (n//3) + cantor(n//3)

while True:
  try :
    print(cantor(3 ** int(input())))
  except :
    break