vimconfig
=========

my CnetOS vim config

安装步骤：
1、安装bundle；
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
如果没有安装git，请先安装git：
yum install git

2、下载vim配置：
git clone https://github.com/kevin386/vimconfig.git ~/.vim/exconf

3、修改/etc/vimrc
如果不确定vimrc位置，先查找vimrc位置：
find / -name vimrc
修改：
vim /etc/vimrc 
在文件末尾加上：
source ~/.vim/exconf/vimrc

4、使配置中用bundle管理的其它插件生效
重新打开/etc/vimrc：
vim /etc/vimrc
安装其它插件：
:BundleInstall

5、安装ctags：
yum install ctags
