vimconfig，my vim config，使用bundle管理vim插件
=========

<h3>一、使用该config，需要安装vim最新版本以及ctags：</h3>
<p>
<ol>
<li>安装ctags：
<pre>yum/apt-get install ctags</pre>
</li>
<li>安装git:
<pre>yum/apt-get install git</pre>
</li>
<li>安装vim7.4：
<pre>cd ~
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar jxvf vim-7.4.tar.bz2
cd vim74/
./configure --prefix=/usr/local/vim --enable-multibyte --enable-cscope --enable-pythoninterp 
</pre>
（--enable-multibyte开启多字符编码，必选，不然VIM中文乱码。）
<pre>make && make install</pre>
如果报以下错误，<a href="http://blog.163.com/nighthawk2008@126/blog/static/172634464201152083229697/">安装ncurses</a>:
<pre>
Unable to find the ncurses libraries or the required header files.
'make menuconfig' requires the ncurses libraries.
Install ncurses (ncurses-devel) and try again.</pre>
<pre>sudo apt-get install libncurses5-dev</pre>
<pre>yum install ncurses-devel</pre>

如果之前安装过vim旧版本，替换系统自带的VIM7.0，在~/.bashrc中指定别名：
<pre>alias vim='/usr/local/vim/bin/vim'
alias vimdiff='/usr/local/vim/bin/vimdiff'
</pre>
或删除系统自带的VIM：
<pre>rpm -e vim-enhanced</pre>
否则把新安装的vim加入到环境变量：
<pre>sudo gedit /etc/environment
在PATH="...."的末尾处添加：
:/usr/local/vim/bin
source /etc/environment
sudo gedit ~/.bashrc
export PATH=/usr/local/vim/bin:$PATH
source ~/.bashrc
</pre>
</li>
</ol>
</p>

<h3>二、下载并安装vim config文件：</h3>
<p>
<ol>
<li>安装bundle:
<pre>cd ~
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
</pre>
</li>
<li>下载vim配置：
<pre>git clone https://github.com/kevin386/vimconfig.git ~/.vim/exconf</pre>
</li>
<li>修改~/.vimrc，先拷贝全局的vimrc到home当前用户的home目录，如果不确定vimrc位置，先查找vimrc位置
<pre>
find / -name vimrc
cp /etc/vim/vimrc ~/.vimrc
vim ~/.vimrc
</pre>
在文件末尾添加：
<pre>
source ~/.vim/exconf/vimrc
</pre>
</li>
<li>
拷贝colors和plugin到 ~/.vim/
<pre>
cp -R ~/.vim/exconf/colors/ ~/.vim/
cp -R ~/.vim/exconf/plugin/ ~/.vim/
</pre>
</li>
<li>使配置中用bundle管理的其它插件生效，重新打开/etc/vimrc，运行安装命令，如果报错，请确定vim版本是否最新，以及git或者bundle是否安装成功：
<pre>vim /etc/vimrc
:BundleInstall</pre>
</li>
</ol>
</p>

<h3>三、安装cscope</h3>
<p>
<ol>
<li>软件下载并解压： http://sourceforge.net/project/showfiles.php?group_id=466
    <pre>
    bzip2 -d  gcc-4.1.0.tar.bz2
    tar -xvf gcc-4.1.0.tar</pre>
</li>
<li>软件安装: 
  <pre>
  ./configure --with-flex
  make
  make install</pre>
</li>
<li>
下载配置文件：
<pre>
cd ~/.vim/exconf/plugin
wget http://cscope.sourceforge.net/cscope_maps.vim
vim ~/.vimrc
source ~/.vim/exconf/plugin/cscope_maps.vim</pre>
</li>
<li>
生成cscope数据库文件：
<pre>find /home/kevin/workspace/project -name "*.py" -o -name "*.html" -o -name "*.js" > cscope.files
cscope -Rbkq -i cscope.files  </pre>
</li>
<li>
命令：
<pre>    s：查找C代码符号
    g：查找本定义
    d：查找本函数调用的函数
    c：查找调用本函数的函数
    t：查找本字符串
    e：查找本egrep模式
    f：查找本文件
    i：查找包含本文件的文件<pre>
</li>
</ol>
</p>
