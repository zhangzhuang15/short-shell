
`grep -rl isRight *`
> 递归查找文件内容包含的 isRgiht的文件，只输出文件名

`grep -ni isRight *`
> 忽略大小写，查找文件内容包含 isRight 的文件，输出他们包含 isRight 的
> 那些行内容，以及行号。

`grep -ni isRight test.txt -A 3 -B 2`
> 忽略大小写，查找文件test.txt包含 isRight的所有行，将这些行、行号、上邻3行、
> 下邻2行输出。

`grep -p "^\d.*?n{4}" test.txt`
> 按照正则表达式查找文件中 test.txt 符合条件的所有行，输出

`grep -v isRIhgt test.txt`
> 查找test.txt文件，将里面不包含isRIhgt的行输出