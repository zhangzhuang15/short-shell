num=5
case $num in
1)
  echo '数值为1'
  echo '你还想继续输入什么数据呢？'
;;
2)
  echo '数值是2'
  echo '他还想输入什么数据呢？'
;;
3|4|5)
  echo '数据是3或者4或者5'
  echo '请继续输入数据吧'
;;
*)
  echo '什么数据它都不等于'
;;
esac

m="macbook"
case $m in
1)
  echo '这个数据的值是1'
;;
"macboo")
  echo '这个数据的值是macboo'
;;
"macbook"|"macbook air")
  echo '这个数据的值是macbook或者macbook air'
;;
esac
