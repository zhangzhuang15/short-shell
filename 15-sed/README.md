## example1
test.txt内容：
```
Spring
Festival
is Coming
```

之后执行

```sh
sed -i '' "1,2d" test.txt
```

test.txt内容：
``` 
is Coming
```


## example2

test.txt内容:
``` 
Spring is Coming
I like this Spring
Spring is Great
```

然后执行
```sh
sed -i '' '1,2s/Spring/Festival/g' test.txt
```

test.txt内容：
```
Festival is Coming
I like this Festival
Spring is Great
```

如果是执行
```sh 
sed -i '' '1,2s/Spring/Festival/' test.txt
```
则test.txt内容变成
``` 
Festival is Coming
I like this Spring
Spring is Great
```


## example3
test.txt内容:
``` 
Spring is Coming
I like this Spring
Spring is Great
```

然后执行
```sh
sed -n 1,2p test.txt
```
终端输出:
``` 
Spring is Coming
I like this Spring
```

如果是执行
```sh
sed -n '/^Spring/p' test.txt
```
终端输出：
``` 
Spring is Coming
Spring is Great
```
