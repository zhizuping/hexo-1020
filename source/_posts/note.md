---
title: HEXO撰写文章
date: YYYY-MM-DD HH:MM:SS
tags: [HEXO]
categories: study
password: aaa
abstract: Welcome to my blog, enter password to read.
message: Welcome to my blog, enter password to read.
---
# 创建文章
``` bash
$ hexo new "title"
```
当输入命令后，就会在 source/-posts 文件夹下创建一个文件，命名为：title.md
# markdown语法汇总
---
> 代码块
``` bash
* `![图片链接](categories/ex.png)`
```
# hexo目录
*node_modules: 依赖包
public：存放生成的页面
scaffolds：生成文章的一些模板
source：用来存放你的文章
themes：主题
config.yml: 博客的配置文件*
# <font color="#FF3300">Theme目录
*languages: 顾名思义
layout：布局文件，其实后期想要修改自定义网站上的东西，添加各种各样的信息，主要是在这里修改，其中comment是评论系统，common是常规的布局，最常修改的在这里面，比如修改页面head和footer的内容。
scripts：js脚本，暂时没什么用
source：里面放了一些css的样式，以及图片*

***
[更多参考大佬模板](http://silencejql.coding.me/categories/Hexo/) </font>
