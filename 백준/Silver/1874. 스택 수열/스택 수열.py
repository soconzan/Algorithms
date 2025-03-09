from collections import deque

n = int(input())
st = deque()

li = []

for i in range(1, n+1):
    li.append(int(input()))

a = []
idx = 0

for i in range(1, n+1):
    st.append(i)
    a.append('+')

    while len(st) != 0 and li[idx] == st[-1]:
        st.pop()
        a.append('-')
        idx += 1

if len(st) != 0:
    print('NO')
else:
    for i in a:
        print(i)