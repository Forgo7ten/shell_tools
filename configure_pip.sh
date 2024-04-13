#!/bin/bash

mkdir ~/.pip && echo "[global]
timeout = 6000
index-url=https://pypi.tuna.tsinghua.edu.cn/simple 
extra-index-url=http://mirrors.aliyun.com/pypi/simple/
                http://pypi.mirrors.ustc.edu.cn/simple/
                https://pypi.org/
[install]
trusted-host=mirrors.aliyun.com
             pypi.tuna.tsinghua.edu.cn
             pypi.mirrors.ustc.edu.cn
             pypi.org" > ~/.pip/pip.conf

pip config list