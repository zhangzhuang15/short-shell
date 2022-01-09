num=20

# 将 == 改为 -eq 再试试
if [[ $num == 20 ]]; then
   echo "num==20"
else
   echo "num!=20"
fi

# 把 < 改为 -lt 再试试看
if [[ $num < 25 ]]
then
   echo "num<25"
else
   echo "num≥25"
fi

# 单行写法， \会忽视后边的换行符、空白符。
# 因此表面上看是多行，其实是单行
if [[ $num > 10 ]]; then \
    echo "num>10";
    echo "num可以再大一点"; \
else \
    echo "num≤10"; \
fi

# 把 && 改为 -a 再试试
if [[ $num > 10 && $num < 30 ]]
then
   echo "10<num<30"
elif [[ $num < 35 ]]
then
   echo "num<35"
else
   echo "num>35"
fi

echo ""


##############################################

num="jack"

if [[ $num == "jack" ]]
then
   echo "num==jack"
fi

# 把 -ge 改成 >= 再试试
if [[ $num -ge "jack" ]]
then
   echo "num≥jack"
fi

if [[ $num > "man" ]]
then
   echo "num>man"
else
   echo "num≤man"
fi


if [[ $num > "man" || $num < "woman" && ($num < "man" || $num < "kite") ]]
then
   echo "num < woman && ( num < man || num < kite )"
fi


if [[ -z $num ]]
then
   echo "num是空字符串"
elif [[ -n $num ]]
then
   echo "num不是空字符串"
fi

echo ""
echo ""
##########################################################

# 除了 if [[ ]] 这种写法， 还有 if []这种写法。
# 下面给出具体例子，根据个人喜好选择使用哪种方法。
# 个人推荐使用 if [[]].

num=10

# 把 -eq 改成 == 试试看
if [ $num -eq 10 ]
then
   echo "num == 10"
fi

# 把 -lt 改成 < 试试看
if [ $num -lt 20 ]
then
   echo "num < 20"
fi

if [ $num -le 20 ]
then
   echo "num <= 20"
fi

# 把 -ne 改成 != 试试看
if [ $num -ne 5 ]
then
   echo "num != 5"
fi

# 把 -a 改成 && 试试看
if [ $num -lt 20 -a $num -ge 5 ]
then
   echo "5≤num<20"
fi



num="jack"

#  = 改成 -eq 试试看
#  = 改成 == 试试看
if [ $num = "jack" ]
then
   echo "num == jack"
fi

# != 改成 -ne 试试看
if [ $num != "monstor" ]
then
   echo "num != monstor"
fi

# 想要用 && 和 ||，必须拆成多个 []
if [ $num != "Jack" ] && [ $num != "monstor" ]
then
   echo "num != Jack && num != monstor"
fi

if [ $num != "Jack" -a $num != "monstor" ]
then
   echo "num != Jack and num != monstor"
fi

# 很遗憾，-gt -lt -ge -le -eq -ne不兼容字符串的比较
:<<!
if [ $num -gt "man" -o $num -lt "woman" -a ($num -lt "man" -o $num -lt "kite") ]
then
   echo "num < woman && ( num < man || num < kite )"
fi
!

# 可见 if []这种写法的兼容性有多糟糕，所以不推荐使用。
# 而 if [[ ]] 更接近 C风格编程语言，更容易被掌握。

echo ""
echo ""
#############################################################
# 文件类型检测方面的运算符

file="README.md"

if [[ -f $file ]]
then
   echo "$file 是普通文件"
fi

if [[ -e $file ]]
then
   echo "$file 已经存在"
fi

file="./"

if [[ -d $file ]]
then
   echo "$file 是目录"
fi

# 更多类似于 -e -d -f 的运算符参考README.md