**.dotfiles and notes**

Change default terminal(what pop shell `super + t` uses):
```bash
gsettings set org.gnome.desktop.default-applications.terminal exec <terminal path>
```

No capslock:
```bash
setxkbmap -option caps:escape
```

Vim Plug
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Powerline font:
```bash
cd ~/Repo
git clone https://github.com/powerline/fonts
cd fonts/
./install.sh
```

### Must have terminal tools
* fish - https://github.com/fish-shell/fish-shell
* starship https://github.com/starship/starship
* z - https://github.com/ajeetdsouza/zoxide
* fzf - https://github.com/junegunn/fzf
* exa - https://github.com/ogham/exa 
