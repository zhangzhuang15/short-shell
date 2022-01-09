num=0

# 与while不同的是，当满足条件时，循环结束。

# [ condition ]写法
until [ $num -gt 5 ]
do
  num=$(($num+1))
  echo "num: $num"
done

echo ""

# [[ condition ]]写法
num=0
until [[ $num > 5 ]]
do
  num=$(($num+1))
  echo "num: $num"
done


echo ""

# ((condition))写法
num=0
until (($num>5))
do
  num=$(($num+1))
  echo "num: $num"
done
