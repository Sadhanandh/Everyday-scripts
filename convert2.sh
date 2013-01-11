#!/bin/bash
for f in *.mp4
      do 
      ffmpeg -i "$f" -acodec libmp3lame -ab 128k "${f%.flv}.mp3"
done
