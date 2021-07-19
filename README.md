# 安装配置环境
sudo apt-get install vim git vim-gtk3 cmake python3.8 python3.8-dev  #基础安装
# 前端 如果不开发前端 可以不安装
sudo apt-get install npm yarn
# Rust安装
curl https://sh.rustup.rs -sSf | sh
# 
source $HOME/.cargo/env
# 
export PATH="$HOME/.cargo/bin:$PATH" #或增加~/.bash_profile
# Golang安装
wget -c https://dl.google.com/go/go1.16.5.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local
# 
echo export GOPATH=$HOME/GO >> ~/.bashrc
# 
echo export GOROOT=/usr/local/go >> ~/.bashrc
# 
echo export PATH=$PATH:$GOROOT/bin:$GOPATH/bin >> ~/.bashrc
# 
source ~/.bashrc
# 
mkdir -p $GOPATH/{src,pkg,bin}
# 
go get -u github.com/nsf/gocode
# 
要么在 ${GOPATH}/src/github.com/nsf/gocode/vim
# 
要么在 ${GOPATH}/pkg/mod/github.com/nsf/gocode@v0.0.0-20190302080247-5bee97b48836/vim
# 
cd ${GOPATH}/pkg/mod/gocode@v0.0.0-20190302080247-5bee97b48836
# 
./pathogen_update.sh
# 
chmod +x *.sh

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

# 安装
./install.sh --all #配置前把需要用的语言安装了
# 快捷键请参考博客:
https://www.cnblogs.com/eternalnight/p/13900085.html

