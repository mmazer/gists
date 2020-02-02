""" Get nested value in dict

    deep_get(dict, 'key1', 'key2', 'key3')
"""

from functool import reduce


def deep_get(dictionary, *keys):
    return reduce(lambda d, key: d.get(key) if d else None, keys, dictionary)
