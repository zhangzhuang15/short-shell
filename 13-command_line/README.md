## command_line

当执行`zsh main.sh -p 81 --name husky` ,  

如何在 `main.sh`中获取 `-p 81 --name husky`的信息呢？  

在`main.sh`中：  
* $0 == "main.sh"
* $1 == "-p"
* $2 == "81"
* $* == "-p 81 --name husky"

有了上述的认识，如何开发命令行工具就清晰多了。

上述的结论可以在shell_command_line.sh中验证。

> 实际开发中，没必要只用shell开发命令行工具，因为在
> 解析传入的参数时，shell会变得很繁琐。最好是参数少
> 的任务交给shell，参数较多的交给高级语言处理，比如C
> 语言。这种做法，可以参考linus开发的[git工具早期代码](https://github.com/git/git/tree/v0.99).