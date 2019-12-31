#!/usr/bin/env python3

import base64
import json
import os
import uuid

def get_anki_guid():
    u = uuid.uuid4()
    encoded = base64.encodebytes(u.bytes)
    return encoded[:10].decode("utf-8")

def get_lesson_dirs():
    entries = os.listdir(os.path.join(os.getcwd(), 'lessons'))
    dirs = [os.path.join(os.getcwd(), 'lessons', entry) for entry in entries]
    return [d for d in dirs if os.path.isdir(d)]

dirs = get_lesson_dirs()

for d in dirs:
    path = os.path.join(d, 'vocabulary.json')

    with open(path) as f:
        data = json.load(f)
        for entry in data:
            if not 'guid' in entry:
                entry['guid'] = get_anki_guid()

    with open(path, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=4, sort_keys=True)
