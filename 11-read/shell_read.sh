# 输入完毕后，按下回车，
# 你的输入内容就会以一个字符串的形式存入到num中
read num

echo "你输入了:$num"

echo ""

for i in $num 
do
  echo "$i"
done