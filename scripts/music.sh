#!/usr/bin/env 

sudo pacman -S youtube-dl

mkdir ~/music
cd ~/music
sudo rm -R *
mkdir ~/music/loop
mkdir ~/music/op
mkdir ~/music/orchestral
mkdir ~/music/ost
mkdir ~/music/piano
mkdir ~/music/pop
mkdir ~/music/zen
mkdir ~/music/jpop
mkdir ~/music/piano-strings

cd ~/music/loop
youtube-dl -x https://www.youtube.com/playlist?list=PLcr6smgplMLwUj6q6IzdOTE_b8VIHWo7V

cd ~/music/op
youtube-dl -x https://www.youtube.com/playlist?list=PLcr6smgplMLyufHYBUFk_7lttJqo5nWun

cd ~/music/orchestral
youtube-dl -x https://www.youtube.com/playlist?list=PLcr6smgplMLzTNDduFdGkoAtY445MlEe1

cd ~/music/ost
youtube-dl -x https://www.youtube.com/playlist?list=PLcr6smgplMLwTrWVkiXzZLlEBnpDKEHWR

cd ~/music/piano
youtube-dl -x https://www.youtube.com/playlist?list=PLcr6smgplMLwpXwGoi3KvTBsxbWwMNzHi

cd ~/music/piano-strings
youtube-dl -x https://www.youtube.com/playlist?list=PLcr6smgplMLwKXTmM8217iaUM6rppRgzY

cd ~/music/pop
youtube-dl -x https://www.youtube.com/playlist?list=PLcr6smgplMLxawhRZWoZWV7OECistxRr8

cd ~/music/zen
youtube-dl -x https://www.youtube.com/playlist?list=PLcr6smgplMLzphUCfx8YctOXZH99gMv53

cd ~/music/jpop
youtube-dl -x https://www.youtube.com/playlist?list=PLcr6smgplMLytnnKC0BcuoAhWzl-OU9q6
