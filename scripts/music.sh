#!/usr/bin/env 

sudo pacman -S youtube-dl

[ -f $HOME/music ] && mkdir ~/music
[ -f $HOME/music/all ] && mkdir ~/music/all
[ -f $HOME/music/anime-op ] && mkdir ~/music/anime-op
[ -f $HOME/music/ost ] && mkdir ~/music/ost
[ -f $HOME/music/orchestral ] && mkdir ~/music/orchestral
[ -f $HOME/music/piano ] && mkdir ~/music/piano
[ -f $HOME/music/calm ] && mkdir ~/music/calm
[ -f $HOME/music/calm-'(h)' ] && mkdir ~/music/calm-'(h)'
[ -f $HOME/music/lucas-king ] && mkdir ~/music/lucas-king
[ -f $HOME/music/jpop ] && mkdir ~/music/jpop
[ -f $HOME/music/en-pop ] && mkdir ~/music/en-pop
[ -f $HOME/music/up-beat-'(h)' ] && mkdir ~/music/up-beat-'(h)'
[ -f $HOME/music/dark ] && mkdir ~/music/dark
[ -f $HOME/music/up-beat ] && mkdir ~/music/up-beat
[ -f $HOME/music/slow-hip-hop ] && mkdir ~/music/slow-hip-hop
[ -f $HOME/music/lsd ] && mkdir ~/music/lsd
[ -f $HOME/music/rap ] && mkdir ~/music/rap

# install all playlists
if [ $# -eq 0 ]; then
youtube-dl -x -o ~/music/lsd/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLziUCOlzPSEpGA7D1XlBydI
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
youtube-dl -x -o ~/music/rap/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLxgSVk7bX1kEzkG6EhWPzv4
fi

if [ $1 = "lsd" ]; then
youtube-dl -x -o ~/music/lsd/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLziUCOlzPSEpGA7D1XlBydI
fi
if [ $1 = "lucas-king" ]; then
youtube-dl -x -o ~/music/lucas-king/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLy3IqsBcWQh4WXRvsfMymjn
fi
if [ $1 = "calm-(h)" ]; then
youtube-dl -x -o ~/music/calm-'(h)'/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLwnh-GqDzso2PR9GFVXDqPh
fi
if [ $1 = "all" ]; then
youtube-dl -x -o ~/music/all/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLwdrz8MRAz4nGL24fDwqpEA
fi
if [ $1 = "en-pop" ]; then
youtube-dl -x -o ~/music/en-pop/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLxawhRZWoZWV7OECistxRr8
fi
if [ $1 = "up-beat-(h)" ]; then
youtube-dl -x -o ~/music/up-beat-'(h)'/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLypjd2_3jgFTFLoCd5ErQmK
fi
if [ $1 = "dark" ]; then
youtube-dl -x -o ~/music/dark/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLwDANPt2HDsixjkKsXiYjrm
fi
if [ $1 = "calm" ]; then
youtube-dl -x -o ~/music/calm/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLyvkf-TioMW36EtqBZqSQHQ
fi
if [ $1 = "up-beat" ]; then
youtube-dl -x -o ~/music/up-beat/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLyjDLYgoiClj7pH_xLiowG8
fi
if [ $1 = "ost" ]; then
youtube-dl -x -o ~/music/ost/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLwTrWVkiXzZLlEBnpDKEHWR
fi
if [ $1 = "anime-op" ]; then
youtube-dl -x -o ~/music/anime-op/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLyufHYBUFk_7lttJqo5nWun
fi
if [ $1 = "slow-hip-hop" ]; then
youtube-dl -x -o ~/music/slow-hip-hop/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLxgUviEXzL_ngFHWe9ZOof1
fi
if [ $1 = "jpop" ]; then
youtube-dl -x -o ~/music/jpop/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLytnnKC0BcuoAhWzl-OU9q6
fi
if [ $1 = "orchestral" ]; then
youtube-dl -x -o ~/music/orchestral/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLzTNDduFdGkoAtY445MlEe1
fi
if [ $1 = "piano" ]; then
youtube-dl -x -o ~/music/piano/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLwpXwGoi3KvTBsxbWwMNzHi
fi
if [ $1 = "rap" ]; then
youtube-dl -x -o ~/music/rap/"%(title)s.%(ext)s" https://www.youtube.com/playlist?list=PLcr6smgplMLxgSVk7bX1kEzkG6EhWPzv4
f
