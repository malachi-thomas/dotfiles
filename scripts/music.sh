#!/usr/bin/env 

sudo pacman -S youtube-dl

mkdir ~/music
sudo rm -rv ~/music/*

mkdir ~/music/all
mkdir ~/music/anime-op
mkdir ~/music/ost
mkdir ~/music/orchestral
mkdir ~/music/piano
mkdir ~/music/calm
mkdir ~/music/calm-'(h)'
mkdir ~/music/lucas-king
mkdir ~/music/jpop
mkdir ~/music/en-pop
mkdir ~/music/up-beat-'(h)'
mkdir ~/music/dark
mkdir ~/music/up-beat
mkdir ~/music/slow-hip-hop
mkdir ~/music/lsd

youtube-dl -x -o ~/music/lcd/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLziUCOlzPSEpGA7D1XlBydI

youtube-dl -x -o ~/music/lucas-king/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLy3IqsBcWQh4WXRvsfMymjn

youtube-dl -x -o ~/music/calm-'(h)'/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLwnh-GqDzso2PR9GFVXDqPh

youtube-dl -x -o ~/music/all/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLwdrz8MRAz4nGL24fDwqpEA

youtube-dl -x -o ~/music/en-pop/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLxawhRZWoZWV7OECistxRr8

youtube-dl -x -o ~/music/up-beat-'(h)'/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLypjd2_3jgFTFLoCd5ErQmK

youtube-dl -x -o ~/music/dark/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLwDANPt2HDsixjkKsXiYjrm

youtube-dl -x -o ~/music/calm/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLyvkf-TioMW36EtqBZqSQHQ

youtube-dl -x -o ~/music/up-beat/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLyjDLYgoiClj7pH_xLiowG8

youtube-dl -x -o ~/music/ost/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLwTrWVkiXzZLlEBnpDKEHWR

youtube-dl -x -o ~/music/anime-op/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLyufHYBUFk_7lttJqo5nWun

youtube-dl -x -o ~/music/slow-hip-hop/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLxgUviEXzL_ngFHWe9ZOof1

youtube-dl -x -o ~/music/jpop/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLytnnKC0BcuoAhWzl-OU9q6

youtube-dl -x -o ~/music/orchestral/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLzTNDduFdGkoAtY445MlEe1

youtube-dl -x -o ~/music/piano/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLwpXwGoi3KvTBsxbWwMNzHi
