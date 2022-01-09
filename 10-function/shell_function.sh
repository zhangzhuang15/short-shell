# 定义函数
#
#  $$
#  $#
#  $*
#  $@
#  $2
#  $!
#  $?
##  你都分得清嘛😭
add(){
    echo "总共传入 $# 个参数"

    echo "传入的参数为 $* "

    echo "传入的参数为 $@ "

    echo ""

    for i in $@
    do
       echo "依次打印参数: $i"
    done

    echo ""

    for i in $*
    do
       echo "依次打印参数: $i"
    done

    num=0

    for i in $*
    do
       num=$(($num + $i))
    done
    return $num
}

echo "当前进程ID: $$"

echo ""

echo "后台运行的最后一个进程ID: $!"

echo ""

add 1 2 "hello"

# 当函数有返回值，请使用 $? 获取返回的结果
# 当函数没有返回值， $? 表明函数执行是否出错， $?等于0表示没有错误
echo "add 函数结果: $?"