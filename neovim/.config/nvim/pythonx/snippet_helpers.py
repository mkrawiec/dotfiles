import re

def to_kebab(name):
    """ Convert: CamelCaseName -> camel-case-name """
    s1 = re.sub('(.)([A-Z][a-z]+)', r'\1-\2', name)
    return re.sub('([a-z0-9])([A-Z])', r'\1-\2', s1).lower()
