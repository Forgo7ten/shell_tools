#!/bin/bash

echo '#==================================================#
# history 命令查看历史输入命令的时间展示格式
HIST_STAMPS="yyyy-mm-dd"

# 配置bash_profile环境变量
if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi' >> ~/.zshrc

echo '# 配置bash_aliases别名
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi' >> ~/.bash_profile

echo '#==================================================#

alias ll="ls -alF"
alias lg="ll | grep"


# 获得本机ip
alias py_getip="python -c \"import socket;print([(s.connect(('\'8.8.8.8\'', 53)), s.getsockname()[0], s.close()) for s in [socket.socket(socket.AF_INET, socket.SOCK_DGRAM)]][0][1])\""
# 获得当前时间
alias py_time="python -c \"import datetime; print(datetime.datetime.now().strftime('\'%Y/%m/%d %H:%M:%S\''))\""

# ifconfig获得en0网卡ip
alias ip="ifconfig | grep -A 7 \"^en0\""

#==================================================#
' >> ~/.bash_aliases
