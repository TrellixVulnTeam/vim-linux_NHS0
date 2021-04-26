# 安装配置环境
sudo apt-get --purge install git vim vim-tiny neovim-qt vim-athena vim-gtk3 vim-nox
# ubuntu安装ctags
sudo apt-get install ctags #或sudo apt install universal-ctags
# kali linux 安装ctags
sudo apt install universal-ctags
# 下载项目
git clone https://github.com/EternalNight996/vim-linux.git ~/.vim
# 再建立.vimrc软链接
ln -s ~/.vim/vimrc ~/.vimrc
# 测试html或py或C
vim test.html
# 快捷键请参考博客:
https://www.cnblogs.com/eternalnight/p/13900085.html

