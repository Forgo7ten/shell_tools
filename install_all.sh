#!/bin/bash

# 获取脚本所在的目录
script_dir=$(dirname "$0")

pushd $script_dir

./configure_aliases.sh
./configure_vim.sh

# install shell tools
current_dir=$(pwd)
echo "# shell_tools
export PATH=\"\$PATH:$current_dir/tools\"
" >> ~/.bash_profile
source ~/.bash_profile

# 配置git
git_user=${1:-"user"}
git_email=${2:-"user@gmail.com"}
./configure_git.sh $git_user $git_email

./configure_pip.sh
popd

