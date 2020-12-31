#!/usr/bin/env python3

import os

from pydub import AudioSegment
from pydub.silence import detect_nonsilent

MP3 = '第30课-1.mp3'

path = os.path.join(os.getcwd(), 'media', MP3)
audio = AudioSegment.from_mp3(path)
ranges = detect_nonsilent(audio, silence_thresh=-50)
print(ranges)
