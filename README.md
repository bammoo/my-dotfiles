# my-dotfiles 配置 oh-my-zsh 等 shell

# 常用
  - `alias oo='open .'` 使用 `oo` 打开当前（pwd）所在位置目录
  - `alias o='open'` 代替 `open` 打开某个目录
  

# sublime text 2 在 shell 中运用
注意修改 app 路径

```
alias b='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias bb='b .'  
```


# copy without newline
比如 `copy pwd` 得到当前路径（末尾没有换行符）

```
copy () { 
  `$1 | tr -d '\n' | pbcopy`; 
}
```
