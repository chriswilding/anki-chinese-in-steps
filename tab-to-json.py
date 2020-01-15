#!/usr/bin/env python3

import csv
import json
import sys

reader = csv.DictReader(sys.stdin, delimiter='\t')
lines = [row for row in reader]
json.dump(lines, sys.stdout, ensure_ascii=False)
