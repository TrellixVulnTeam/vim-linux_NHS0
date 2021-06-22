# 安装配置环境
sudo apt-get --purge install npm yarn git vim vim-tiny neovim-qt vim-athena vim-gtk3 vim-nox python3.8 python3.8-dev cmake -y
# ubuntu安装ctags
sudo apt-get install ctags #或sudo apt install universal-ctags
# kali linux 安装ctags
sudo apt install universal-ctags
# 下载项目
git clone https://github.com/EternalNight996/vim-linux.git ~/.vim
# 再建立.vimrc软链接
# 
ln -s -f ~/.vim/bundle/tern_for_vim/.tern-project ~/
# 
ln -s -f ~/.vim/vimrc ~/.vimrc
# 
cd ~/.vim/bundle/YouCompleteMe
# go 语言
go get -u github.com/nsf/gocode
要么在 ${GOPATH}/src/github.com/nsf/gocode/vim
要么在 ${GOPATH}/pkg/mod/github.com/nsf/gocode@v0.0.0-20190302080247-5bee97b48836/vim
# 
cd ${GOPATH}/pkg/mod/gocode@v0.0.0-20190302080247-5bee97b48836
# 
./pathogen_update.sh
# 
chmod +x *.sh
# 
./pathogen_update.sh
# 安装
./install.sh --all
# 目前已经测试有
javascript go c/c++ python3 html css ....
# 快捷键请参考博客:
https://www.cnblogs.com/eternalnight/p/13900085.html

