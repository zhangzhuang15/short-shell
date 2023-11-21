## example1
🦶
```sh
echo "name age hobby" | awk "{print $2 $1 $3}"
```
结果：
> name age hobby      

看上去 awk 没什么效果对不对？因为awk命令用的有问题啊

---
🦶🦶
```sh
echo "name age hobby" | awk '{print $2 $1 $3}'
```
结果：
> agenamehobby  

有效果啦🍺  
这回知道了吧，要用 `单引号`哦。  
  
但是三个单词为啥粘在一块儿了，这仨人儿有故事不成？😅

---

🦶🦶🦶
```sh
echo "name age hobby" | awk '{print $2,$1,$3}'
```
结果：
>  age name hobby

好家伙，总算顺眼了，看出什么端倪了没？  
$2指的是 age；  
$1指的是 name；  
$3指的是 hobby；

看样子是按照空格分割“name age hobby”,  $1表示第一个元素name。

🎉没错，就是这样哦。

---

🦶🦶🦶🦶
```sh
echo "name age hobby\nJack 23 reading" | \
awk '{print $2,$1,$3}'
```
结果： 
> age name hobby  
> 23 Jack reading  

wow💥  
awk原来逐行处理啊  

---
🦶🦶🦶🦶🦶
```sh
echo "name age hobby" | awk '{print $1, $0}'
```
结果：
> name name age hobby

你又懂了？ `$0`就是当前行的所有数据。🤓


&nbsp;

&nbsp;



## example2
```sh
echo "name,age,hobby" | awk -F "," '{print $2,$1,$3}'
```
结果： 
> age name hobby

哦吼🤩，awk还能指定分隔符啊。


&nbsp;

&nbsp;



## example3
🦶
```sh
echo "Jack 23 reading\nMike 14 sing" | \
awk '{if($2>16) print $1, ">16"; else print $1, "<16"}'
```
结果：
> Jack >16  
> Mike <16

用 if 指令进行筛选，so easy！🎉

---
🦶🦶 
```sh
echo "name age hobby\nJack 23 reading\nMike 14 sing" | \
awk '{if($2>16 && NR>1) print $1, ">16"; else if(NR>1) \
print $1, "<16"; else}'
```
结果：
> Jack >16  
> Mike <16

看到了没，总共echo三行，我们用NR把第一行过滤掉啦。  
`NR`是什么意思嘞？当前第几行呗。

&nbsp;

&nbsp;



## example4
```sh
echo "Jack 26\nMike 34" | awk 'BEGIN{print "name age"}\
{print $1, $2}'
```
结果：
> name age  
> Jack 26  
> Mike 34

看到没？    
在正式处理每一行数据前，可以利用`BEGIN{}` 做一些事情哦。

同理，
```sh
echo "Jack 26\nMike 34" | awk 'END{print "name age"}\
{print $1, $2}'
```
结果：
> Jack 26  
> Mike 34  
> name age  


&nbsp;

&nbsp;


## example5
```sh
echo "nabef" | awk '{print toupper($0)}'
echo "NABEF" | awk '{print tolower($0)}'
echo "nabef" | awk '{print substr($0, 1, 2)}'
```
结果：
> NABEF  
> nabef  
> na

`toupper` `tolower` `substr`内置函数，是不是很有趣？


&nbsp;

&nbsp;


## example6
有时候，我们想撤销对一些文件的追踪，就可以这样做：
```sh 
git ls-files | \
grep "\.css" | \
awk '{cmd="git rm --cached "$1; system(cmd)}'
```



## 最后一点

上面的例子都是使用 echo 指令产生文本配合 awk 指令使用， awk其实是处理文件内容的，
只需要将文件名放在 awk 指令最后就成了，像这样`awk '{print $1}' test.txt`