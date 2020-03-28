#!/usr/bin/env python3

import os

from pydub import AudioSegment
from pydub.silence import detect_nonsilent

MP3 = 'Lesson 04-3.mp3'
# MP3 = '第14课-3.mp3'

path = os.path.join(os.getcwd(), 'media', MP3)
audio = AudioSegment.from_mp3(path)
ranges = detect_nonsilent(audio, silence_thresh=-50)
print(ranges)
