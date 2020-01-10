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
``` bash
.
├── .deploy
├── public
├── scaffolds
├── scripts
├── source
|   ├── _drafts
|   └── _posts
├── themes
├── _config.yml
└── package.json
```
deploy：执行hexo deploy命令部署到GitHub上的内容目录
public：执行hexo generate命令，输出的静态网页内容目录
scaffolds：layout模板文件目录，其中的md文件可以添加编辑
scripts：扩展脚本目录，这里可以自定义一些javascript脚本
source：文章源码目录，该目录下的markdown和html文件均会被hexo处理。该页面对应repo的根目录，404文件、favicon.ico文件，CNAME文件等都应该放这里，该目录下可新建页面目录。
drafts：草稿文章
posts：发布文章
themes：主题文件目录
config.yml：全局配置文件，大多数的设置都在这里
package.json：应用程序数据，指明hexo的版本等信息，类似于一般软件中的关于按钮

# <font color="#FF3300">Theme目录
``` bash
├── .github            #git信息
├── languages          #多语言
|   ├── default.yml    #默认语言
|   └── zh-Hans.yml      #简体中文
|   └── zh-tw.yml      #繁体中文
├── layout             #布局，根目录下的*.ejs文件是对主页，分页，存档等的控制
|   ├── _custom        #可以自己修改的模板，覆盖原有模板
|   |   ├── _header.swig    #头部样式
|   |   ├── _sidebar.swig   #侧边栏样式
|   ├── _macro        #可以自己修改的模板，覆盖原有模板
|   |   ├── post.swig    #文章模板
|   |   ├── reward.swig    #打赏模板
|   |   ├── sidebar.swig   #侧边栏模板
|   ├── _partial       #局部的布局
|   |   ├── head       #头部模板
|   |   ├── search     #搜索模板
|   |   ├── share      #分享模板
|   ├── _script        #局部的布局
|   ├── _third-party   #第三方模板
|   ├── _layout.swig   #主页面模板
|   ├── index.swig     #主页面模板
|   ├── page           #页面模板
|   └── tag.swig       #tag模板
├── scripts            #script源码
|   ├── tags           #tags的script源码
|   ├── marge.js       #页面模板
├── source             #源码
|   ├── css            #css源码
|   |   ├── _common    #*.styl基础css
|   |   ├── _custom    #*.styl局部css--个性化定制你的网站
|   |   └── _mixins    #mixins的css
|   ├── fonts          #字体
|   ├── images         #图片
|   ├── uploads        #添加的文件
|   └── js             #javascript源代码
├── _config.yml        #主题配置文件
└── README.md          #用GitHub的都知道
```

***
[更多参考大佬模板](http://silencejql.coding.me/categories/Hexo/) </font>
