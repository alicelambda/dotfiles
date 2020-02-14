ln -sf ~/dotfiles/.emacs ~/.emacs
ln -sf ~/dotfiles/.config/i3/config ~/.config/i3/config
mkdir -p ~/.config/i3blocks
ln -sf ~/dotfiles/.config/i3blocks/config ~/.config/i3blocks/config
mkdir -p ~/.config/polybar
ln -sf ~/dotfiles/polybar/config ~/.config/polybar/config
ln -sf ~/dotfiles/.xinitrc ~/.xinitrc
ln -sf ~/dotfiles/.xResources ~/.xResources
ln -sf ~/dotfiles/.bashrc ~/.bashrc
mkdir -p ~/.config/kitty
ln -sf ~/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -sf ~/dotfiles/.config/kitty/snazzy.conf ~/.config/kitty/snazzy.conf

mkdir -p ~/.config/rofi
ln -sf ~/dotfiles/rofi/themes/outrun.rasi ~/.config/themes/config.rasi
ln -sf ~/dotfiles/etchosts /etc/hosts
ln -sf ~/dotfiles/sshconfig ~/.ssh/config
