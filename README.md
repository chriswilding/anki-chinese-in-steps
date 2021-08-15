# Anki Chinese in Steps

[Anki](https://apps.ankiweb.net) is a flashcard program using spaced repetition and [Chinese in Steps](https://www.cypressbooks.com/proddetail.php?prod=9781907838101) is a series of textbooks designed for English speakers studying Chinese.

The Anki deck file format is a zip file containing a sqlite database, any media files and a json manifest of those media files. This repository contains Python scripts to generate an Anki deck for the vocabulary in Chinese in Steps volumes 1, 2 and 3. It also extracts audio snippets from the mp3 files from the CDs included with the books using pydub.

## Prerequisistes

1. [Python 3](https://www.python.org/downloads/)
1. [ffmpeg](https://ffmpeg.org/download.html)
1. make

## Setup

```sh
$ python3 -m venv anki-chinese-in-steps
$ source ./anki-chinese-in-steps/bin/activate
$ pip install -r requirements.txt
```

## Build

```sh
$ make clean
$ make build
```
