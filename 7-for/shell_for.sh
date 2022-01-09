# for和((之间需要用空格隔开
end=5
for ((i=0;i<$end;i++))
do
   echo $i
done



echo ""

###################################

# 如果使用 MacOS 的 zsh执行下述脚本，字符a无法被正确打印出来
# 可改用 bash 执行
for i in 1 2 3 4 a
do
   echo $i
done

echo ""

###################################

array=(1 2 3 4 'aba')
for i in ${array[*]}
do
   echo ${i}
done

echo ""

###################################

# 直接打印出 Harry， 而不是逐字符打印
s="Harry"
for i in $s
do
  echo $i
done

echo ""