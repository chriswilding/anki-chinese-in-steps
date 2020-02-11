#!/usr/bin/env python3

import csv
import json
import os
import collections

import build

def to_codepoint(character):
    return 'U+' + '{:X}'.format(ord(character)).zfill(4)

def compare_pinyin(a, b):
    def clean(input):
        return input.replace(' ', '').lower()
    return clean(a) == clean(b)

dirs = build.get_lesson_dirs()

readings = {}
with open('./unihan/Unihan_Readings.txt', 'r') as f:
    lines = [line.split('\t') for line in f.readlines() if not line.startswith('#') and 'kMandarin' in line]
    for line in lines:
        key = line[0].strip()
        value = line[2].strip()
        readings[key] = value

for d in dirs:
    inp = os.path.join(d, 'vocabulary.json')

    with open(inp) as f:
        data = json.load(f)

    for item in data:
        chinese = item['chinese']
        actual_pinyin = item['pinyin']

        expected_pinyin = ""
        for c in chinese:
            codepoint = to_codepoint(c)
            n = readings.get(codepoint)
            if n is None:
                print("Missing reading for {} {}".format(c, codepoint))
            else:
                expected_pinyin += n

        if not compare_pinyin(actual_pinyin, expected_pinyin):
            print("Expected {} for {} but got {}".format(expected_pinyin, chinese, actual_pinyin))



