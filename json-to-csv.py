#!/usr/bin/env python3

import csv
import json
import os

import build

HEADERS = [
    'chinese',
    'meaning',
    'part-of-speech',
    'pinyin',
    'sentence',
    'sentence-pinyin',
    'sentence-meaning'
]

dirs = build.get_lesson_dirs()

for d in dirs:
    in_path = os.path.join(d, 'vocabulary.json')
    out_path =  os.path.join(d, 'vocabulary.csv')

    with open(in_path) as f:
        data = json.load(f)

    with open(out_path, 'w', encoding='utf-8') as f:
        writer = csv.DictWriter(f, HEADERS, delimiter='\t', extrasaction='ignore')
        writer.writeheader()
        writer.writerows(data)
