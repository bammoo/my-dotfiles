## todo

 - [ ] chrome extension to touch a nodemon hook localhost:8081/?git-path=xxx/yyy

## oh-my-zsh 配置

### 安装

fork 当前 repo 并 `git clone` 到自己的 home 目录下，如

```
git clone https://github.com/bammoo/my-dotfiles.git ~/my-dotfiles
```

把 `~/.zshrc` 里面自定义的内容手动复制到 `~/my-dotfiles/.zshrc` 中

执行：

```
#删除 `~/.zshrc`
rm ~/.zshrc
#建立映射
ln ~/my-dotfiles/.zshrc ~/.zshrc
```


## 示例

### 简化 finder open 

#### 在 finder 中打开当前（pwd）所在位置目录

```
oo
```

或

```
o ./
```

#### 在 finder 中打开某个目录

```
o ~/www/test/
```

### sublime text

#### 在 subl 中打开当前目录

```
bb ./
```

或 

```
bb
```

#### 在 subl 中打开某个文件

```
b ./test.html
```

#### 在 subl 中打开某个目录

```
b ~/www/test/
```



### 复制当前目录

得到当前路径（末尾没有换行符）

```
copy pwd
```



### 快捷进入当前目录的上上上级目录

zsh 有 `..` 和 `...` 了，就差这个了，哈哈。

```
....
```




### 得到当前 ip 地址

如果有多个网卡，会得到多个地址

```
wip
```

#### 结果

1个 ip 地址得到

```
192.168.1.100
```

多个 ip 地址得到

```
192.168.1.100
192.168.2.100
```


