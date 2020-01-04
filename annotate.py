#!/usr/bin/env python3

import base64
import json
import os
import time
import uuid

DECK_ID = 1578170379751

def get_anki_guid():
    u = uuid.uuid4()
    encoded = base64.encodebytes(u.bytes)
    return encoded[:10].decode("utf-8")

def get_epoch_ms():
    return int(time.time() * 1000)

def annotate(entry):
    if not 'guid' in entry:
        entry['guid'] = get_anki_guid()
    if not 'cid' in entry:
        entry['cid'] = get_epoch_ms()
    if not 'nid' in entry:
        entry['nid'] = get_epoch_ms()

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
            annotate(entry)

    with open(path, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=4, sort_keys=True)
