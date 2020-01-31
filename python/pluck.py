'''
Pluck keys from dictionary

d = { 'a': 1, 'b': 2, 'c': 3 }
pluck(('a','c'), d)
 'a': 1, 'c': 3 }

'''
pluck = lambda k, d: dict([(i, d[i]) for i in d if i in set(k)])
