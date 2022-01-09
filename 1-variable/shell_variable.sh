# 定义变量
# =号前后不要有空格
# 改成 num = 3看看会发生什么
# 改成 num =3看看会发生什么
# 改成 num= 3看看会发生什么
num=3

# 使用变量值要加上$
# 完整的写法是 ${num}
echo $num

# 重新设置变量的值
num=4
echo $num

# 设置为只读，值无法修改
readonly num

# 去掉注释，看看会打印出什么
# num=5

# 删除变量，readonly类型变量无法被unset
# 去掉注释，看看会打印出什么
# unset num