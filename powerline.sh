#!/bin/bash

#For the shell
sudo dnf install -y powerline powerline-fonts
echo -e "if [ -f `which powerline-daemon` ]; then\n  powerline-daemon -q\n  POWERLINE_BASH_CONTINUATION=1\n  POWERLINE_BASH_SELECT=1\n  . /usr/share/powerline/bash/powerline.sh\nfi" > ~/.bashrc

#For tmux
sudo dnf install -y tmux-powerline
echo -e "source '/usr/share/tmux/powerline.conf'" > ~/.tmux.conf 

#For vim
sudo dnf install -y vim-powerline
echo -e 'python3 from powerline.vim import setup as powerline_setup\npython3 powerline_setup()\npython3 del powerline_setup\nset laststatus=2 " Always display the statusline in all windows\nset showtabline=2 " Always display the tabline, even if there is only one tab\nset noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)\nset t_Co=256' > ~/.vimrc

echo -e  "++++++++++++++++++\n+Enjoy powerline!+\n++++++++++++++++++"
source ~/.bashrc 
