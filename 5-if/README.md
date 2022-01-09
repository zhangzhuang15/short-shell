## if
本文给出一个总结，具体内容请在shell_if.sh文件中学习。

### 写法结构1
``` 
if condition; then
   some codes here
fi

或

if condition
then
   some codes here
fi
```

### 写法结构2
``` 
if condition; then
   some codes here
else
   some codes here
fi

或

if condition
then
   some codes here
else
   some codes here
fi
```

### 写法结构3
```
if condition; then
  some codes here
elif condition; then
  some codes here
elif condition; then
  some codes here
...
else
  some codes here
fi

或

if condition; then
  some codes here
elif condition; then
  some codes here
elif condition; then
  some codes here
...
fi

(then 单独占据一行的写法这里就不重复了)
```

### condtion处的写法
#### 写法一
``` 
num=10

if [[ $num == 10 ]]
then
   echo "num==10"
fi
```
> * `if`和`[[` 之间要有一个空格
> * `[[`后边有一个空格
> * `]]`前有一个空格
> * 运算符前后要有空格
  
支持的运算符  
| 运算符 |  可用于字符串  |  可用于数字  |  含义   |
|:----:|:----:|:----:|:----|
|  ==   | yes          | yes        | 判断值相等 |
|  !=   | yes          | yes        | 判断值不相等 |
|  >    | yes          | yes        | 大于      |
|  <    | yes          | yes        | 小于      |
|  &&   | yes          | yes        | 逻辑与    |
|  \|\| | yes          | yes        | 逻辑或    |
|  !    | yes          | yes        | 逻辑非   |
|  -ge  | yes          | yes        | 大于等于  |
|  -gt  | yes          | yes        | 大于     |
|  -le  | yes          | yes        | 小于等于  | 
|  -lt  | yes          | yes        | 小于      |
|  -eq  | no           | yes        | 等于      |
|  -ne  | yes          | yes        | 不等于 |
|  -a   | no           | no         | 逻辑与 |
|  -o   | no           | no         | 逻辑或 |  

  

### 写法二
``` 
num=10

if [ $num -eq 10 ]
then
   echo "num is equal with 10"
fi
```
> * `if`和`[` 之间要有一个空格
> * `[`后边有一个空格
> * `]`前有一个空格
> * 运算符前后要有空格

支持的运算符  
| 运算符 |  可用于字符串  |  可用于数字  |  含义   |
|:----:|:----:|:----:|:----|
|  ==   | no           | no         | 判断值相等 |
|  =    | yes          | no         | 判断字符串相等|
|  !=   | yes          | no         | 判断值不相等 |
|  >    | no           | no         | 大于      |
|  <    | no           | no         | 小于      |
|  &&   | yes          | yes        | 逻辑与    |
|  \|\| | yes          | yes        | 逻辑或    |
|  !    | yes          | yes        | 逻辑非   |
|  -ge  | no           | yes        | 大于等于  |
|  -gt  | no           | yes        | 大于     |
|  -le  | no           | yes        | 小于等于  | 
|  -lt  | no           | yes        | 小于      |
|  -eq  | no           | yes        | 等于      |
|  -ne  | no           | yes        | 不等于 |
|  -a   | yes          | yes        | 逻辑与 |
|  -o   | yes          | yes        | 逻辑或 |  


## 文件判断运算符
> 在 `if []` 和 `if [[ ]]`中兼容

|    运算符    |    含义               |  
|:----:|:----|
|  -e $file   | 判断file文件是否存在    |
|  -f $file   | 判断file文件是否为一个普通文件    |
|  -d $file   | 判断file文件是否为一个目录    |
|  -r $file   | 判断file文件是否可读   |
|  -w $file   | 判断file文件是否可写    |
|  -x $file   | 判断file文件是否可执行    |
|  -s $file   | 判断file文件大小是否大于0   |
|  -b $file   | 判断file文件是否为块设备    |
|  -c $file   | 判断file文件是否为字符设备  |
|  -u $file   | 判断file文件是否设置SUID位    |
|  -g $file   | 判断file文件是否设置SGID位    |
|  -k $file   | 判断file文件是否设置Sticky位   |
|  -p $file   | 判断file文件是否为有名管道    |
> $file是文件路径字符串