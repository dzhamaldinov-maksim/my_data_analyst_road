n, a, b = map(int, input().split())
for i in range(1, n + 1):
    if (n - i) * a <= i * b:
        print(i)
        break
