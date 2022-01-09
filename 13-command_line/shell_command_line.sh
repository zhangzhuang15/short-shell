echo "命令行输入的参数有 $# 个"

echo "\$0: $0"

echo "\$*: $*"

s=$*

# 这个输出 和 $# 是不一致的
echo "array length: ${#s}"

echo ""

echo "分别是 "
for i in $*
do
  echo "$i"
done

# 在 shell_project目录下
# 执行 zsh 13-command_line/shell_command_line.sh
# 执行 zsh 13-command_line/shell_command_line.sh -p 81 --name husky 
# 观察输出结果
