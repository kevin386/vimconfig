vimconfig
=========

my CnetOS vim config，使用bundle管理vim插件

一、使用该config，需要安装vim最新版本以及ctags：
1、安装ctags：
$yum install ctags
2、安装git:
$yum install git
3、安装vim7.4：
$cd ~
$wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
$tar jxvf vim-7.4.tar.bz2
$cd vim74/
$./configure --prefix=/usr/local/vim --enable-multibyte
（--enable-multibyte开启多字符编码，必选，不然VIM中文乱码。）
$make && make install
如果之前安装过vim旧版本，替换系统自带的VIM7.0：
$alias vim='/usr/local/vim/bin/vim'
或删除系统自带的VIM：
$rpm -e vim-enhanced

二、下载并安装vim config文件：
1、安装bundle；
$cd ~
$git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/vundle

2、下载vim配置：
$git clone git@github.com:kevin386/vimconfig.git ~/.vim/exconf

3、修改/etc/vimrc
如果不确定vimrc位置，先查找vimrc位置：
$find / -name vimrc
修改：
$vim /etc/vimrc 
在文件末尾加上：
$source ~/.vim/exconf/vimrc

4、使配置中用bundle管理的其它插件生效
重新打开/etc/vimrc：
$vim /etc/vimrc
安装其它插件：
:BundleInstall
