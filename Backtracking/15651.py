def nm():
    if len(li) == m:
        for i in li:
            print(i, end=" ")
        return print()
    for i in range(1, n + 1):
        li.append(i)
        nm()
        del li[-1]


n, m = map(int, input().split())
li = []
nm()
