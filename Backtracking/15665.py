n, m = map(int, input().split())
li = list(map(int, input().split()))
li.sort()
a = []


def nm(idx):
    if len(a) == m:
        for i in a:
            print(i, end=' ')
        return print()

    pr = -1

    for i in range(len(li)):
        if li[i] != pr:
            a.append(li[i])
            pr = li[i]
            nm(i)
            del a[-1]


nm(-1)
