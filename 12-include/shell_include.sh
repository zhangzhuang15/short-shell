# 引入另一个shell脚本
# 这里要使用 source， 不是 include。
# 为了表示引入文件这个意思，文件名中使用了include。

# .表示的不是文件夹12-include，
# .表示的是当你执行shell_include.sh时，所在的目录。

# 比如，在shell_project目录下，执行 zsh 12-include/shell_include.sh,
# .表示的是 shell_project目录.
# $0表示 12-include/shell_include.sh
# dirname $0 将返回 12-include
# cd dir 就会切入到12-include目录下
# 此时 . 代表的就是 12-include目录

dir=$(dirname $0)
cd $dir
source ./variables.sh

echo "name: $name"