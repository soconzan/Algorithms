n, m = map(int, input().split())
li = list(map(int, input().split()))
li.sort()
a = []


def nm():
    if len(a) == m:
        for i in a:
            print(i, end=' ')
        return print()

    pr = -1

    for i in li:
        if i != pr:
            a.append(i)
            pr = i
            li.remove(i)
            nm()
            li.append(a.pop())
            li.sort()


nm()
