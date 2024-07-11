n, m = map(int, input().split())
li = list(map(int, input().split()))
li.sort()
a = []


def nm():
    if len(a) == m:
        for i in a:
            print(i, end=' ')
        return print()
    for i in li:
        if len(a) == 0 or i > a[-1]:
            a.append(i)
            nm()
            del a[-1]


nm()
