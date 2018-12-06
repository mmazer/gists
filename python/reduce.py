from functools import reduce

l = [1, 2, 3, 4, 5]
# optional initial value can be specified as last arg
r = reduce((lambda x, y: x * y), l)

print(r)  # 120
