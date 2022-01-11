# 定义一个数组
array=(1 2 a 'bc')

# 获取数组长度
echo array length:${#array[*]}
echo array length:${#array[@]}

# 打印空行
# 换成 "\n" 看看输出会是什么样的？
echo ""

# 去掉双引号再次执行，看看会出现什么问题
echo "how to traverse the array?"

# 访问数组第一个元素
# shell中数组的起始索引号是 1
echo "array[1]:${array[1]}"

# 获取数组所有的元素
echo array:${array[*]}
echo array:${array[@]}

# 索引号可以通过变量确定
index=2
echo "array[$index]:${array[$index]}"

# 修改数组中的元素
array[1]=bb
echo "array[1]: ${array[1]}"

echo ""

s="very_well"
# 这里用 //_/, 表示将字符串中的下划线替换为逗号
n=(${s//_/,})

echo n: ${n[@]}

echo n length ${#n[*]}



# 将第35行的 逗号 改成 空格， 看看会打印出什么

# 将第35行的（）去掉，看看会打印出什么