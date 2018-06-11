#!/bin/false

CUR_DIR=`pwd`

ln -sf "$CUR_DIR/bash_profile" "$INST_HOME".bash_profile
ln -sf "$CUR_DIR/bashrc" "$INST_HOME".bashrc
ln -sf "$CUR_DIR/Xresources" "$INST_HOME".Xresources

mkdir -p "$INST_HOME".config
ln -sf "$CUR_DIR/lockicon.png" "$INST_HOME".config/lockicon

mkdir -p "$INST_HOME".config/i3
ln -sf "$CUR_DIR/i3config" "$INST_HOME".config/i3/config

mkdir -p "$INST_HOME".config/i3status
ln -sf "$CUR_DIR/i3status.conf" "$INST_HOME".config/i3status/config

mkdir -p "$INST_HOME".config/neofetch
ln -sf "$CUR_DIR/neofetch_config" "$INST_HOME".config/neofetch/config

mkdir -p "$INST_HOME".config/ranger
ln -sf "$CUR_DIR/ranger.conf" "$INST_HOME".config/ranger/rc.conf

mkdir -p "$INST_HOME"bin
ln -sf "$CUR_DIR/lockscript.sh" "$INST_HOME"bin/lockscript.sh
ln -sf "$CUR_DIR/screenshot.sh" "$INST_HOME"bin/screenshot.sh

mkdir -p "$INST_HOME".vim
ln -sf "$CUR_DIR/vimrc" "$INST_HOME".vim/vimrc
ln -sf "$CUR_DIR/vimp.vim" "$INST_HOME".vim/vimp.vim

mkdir -p "$INST_HOME".spacemacs.d
ln -sf "$CUR_DIR/spacemacs_init.el" "$INST_HOME"/.spacemacs.d/init.el

