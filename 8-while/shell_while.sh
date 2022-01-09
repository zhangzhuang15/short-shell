num=0

# while 和 (( 之间要有一个空格
while (($num <= 10))
do
   echo "num: $num"
   num=$(($num + 1))
done

echo ""



num=0
while [[ $num -le 10 ]]
do
   echo "num: $num"
   num=$(($num + 1))
done

echo ""



num=0
while [ $num -le 10 ]
do
   echo "num: $num"
   num=$(($num + 1))
done


echo ""


# 无限循环和break
while true
do 
   echo "num: $num"
   num=$(($num + 2))
   if [[ $num > 16 ]]
   then
      break;
   else
      continue;
   fi
done