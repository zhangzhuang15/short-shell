num=4

# num 会被当作字符串
s=num

# 打印出 num， 而不是 4
echo "s: $s\n"

# 去除双引号，会打印出什么
# 改写成 s=MacBook\ Pro\ 14.1，会打印出什么
s="MacBook Pro 14.1"


# 将字符串拼接
name="$s apple in 2021"
echo "name: $name"

# 获取字符串长度
echo "s length: ${#s}"

# 字符串子串
echo "s[0,6): ${s:0:6}"

# 访问字符串第一个字符
# 首字符索引号是0，不是1；
# 不要和 下一节的 array 混淆。
echo "s[0]: ${s:0:1}"

echo ""



file="/dir1/dir2/dir3/myfile.txt"
# ${}可以对file做进一步筛选
# 其中#号表示左匹配，%表示右匹配
# 而带有## %%的匹配表示贪婪匹配.
# 这种表达会将匹配成功的部分删除掉

# #*/表示从最左边开始匹配，*表示任意字符，于是匹配到"/"，
# 删除“/”后，就得到了“dir1/dir2/dir3/myfile.txt”
echo 1 ${file#*/}

# 其余情形，对应输出结果，自行分析，非常简单
echo 2 ${file##*/}
echo 3 ${file#*.}
echo 4 ${file##*.}
echo 5 ${file%/*}
echo 6 ${file%%/*}
echo 7 ${file%.*}
echo 8 ${file%%.*}