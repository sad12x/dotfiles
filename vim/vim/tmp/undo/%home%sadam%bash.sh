Vim�UnDo� u����C/��њZW@�̢�0��	n�H      LOCK=                             c���    _�                            ����                                                                                                                                                                                                                                                                                                                                                             c��F     �                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c��J    �                 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       c���     �               LOCK=$HOME/lock.png   URES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       c���     �               ZLOCK=RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       c���    �               LOCK=5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             c��;     �                 #!/bin/bash   TMPBG=/tmp/screen.png   LOCK=$HOME/lock.png   URES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')       �ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $LOCK -filter_complex "boxblur=5:1,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG -loglevel quiet   i3lock -i $TMPBG   	rm $TMPBG5��