#!/bin/false

ln -sf "`pwd bash_profile`/bash_profile" "$INST_HOME".bash_profile
ln -sf "`pwd bashrc`/bashrc" "$INST_HOME".bashrc
ln -sf "`pwd i3config`/i3config" "$INST_HOME".config/i3/config
ln -sf "`pwd i3status.conf`/i3status.conf" "$INST_HOME".config/i3status/config
ln -sf "`pwd lockicon.png`/lockicon.png" "$INST_HOME".config/lockicon
ln -sf "`pwd lockscript.sh`/lockscript.sh" "$INST_HOME"bin/lockscript.sh
ln -sf "`pwd neofetch_config`/neofetch_config" "$INST_HOME".config/neofetch/config
ln -sf "`pwd ranger.conf`/ranger.conf" "$INST_HOME".config/ranger/rc.conf
ln -sf "`pwd screenshot.sh`/screenshot.sh" "$INST_HOME"bin/screenshot.sh
ln -sf "`pwd Xresources`/Xresources" "$INST_HOME".Xresources
ln -sf "`pwd vimrc`/vimrc" "$INST_HOME".vim/vimrc
ln -sf "`pwd vimp.vim`/vimp.vim" "$INST_HOME".vim/vimp.vim
ln -sf "`pwd spacemacs_init.el`/spacemacs_init.el" "$INST_HOME"/.spacemacs.d/init.el

