#!/usr/bin/env python3

import csv
import json
import os
import collections

import build

dirs = build.get_lesson_dirs()

hanzi = []

for d in dirs:
    inp = os.path.join(d, 'vocabulary.json')

    with open(inp) as f:
        data = json.load(f)
        hanzi.extend(item['chinese'] for item in data)


print('\n'.join(dict.fromkeys(list(''.join(hanzi))).keys()))
