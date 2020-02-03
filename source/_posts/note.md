---
title: HEXO撰写文章
date: YYYY-MM-DD HH:MM:SS
tags: [HEXO]
categories: study
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

# <font color="#FF3300">Theme目录</font>
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
# 看板娘的制作
1. [进阶版Live2D看板娘](https://blog.csdn.net/qq_39610915/article/details/90679768)  
(1)若只想cp网上的：
在/themes/next/layout/layout.swig中
```
<head><script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css"/></head>
<body><script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/autoload.js"></script></body>
```
也可以自己fork自己的仓，这个我不会修改上传，所以效果同上
```
<script src="https://cdn.jsdelivr.net/gh/zhizuping/live2d-widget/autoload.js"></script>
```
(2)若想自定义：
下载[大神项目](https://github.com/stevenjoezhang/live2d-widget)，解压到本地博客目录的themes/next/source/lib下，修改autoload.js文件，将其中
```
const live2d_path = "https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/";
```
改为
```
const live2d_path = "/lib/live2d-widget-master/";
```
在/themes/next/layout/layout.swig中
```
<head><script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css"/></head>
<body><script src="https://zhizuping.github.io/lib/live2d-widget-master/autoload.js"></script></body>
```
上传到github才能生效
在主题配置文件_config.yml 中,新增如下内容：
```
live2d:
  enable: true
  ```
更改位置waifu.css：
```
#waifu {
	bottom: -1000px;
	right: 30px;
	line-height: 0;
	position: fixed;
	transform: translateY(3px);
	transition: transform .3s ease-in-out, bottom 3s ease-in-out;
	z-index: 1;
}
```
2. [Next v7.X 主题升级,美化](https://www.cnblogs.com/aoguai/p/11481253.html)
***
[更多参考大佬模板](http://silencejql.coding.me/categories/Hexo/)
