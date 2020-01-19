---
title: MYDAILY
date: 2020-01-05 23:59:31
tags: [plan]
categories: Daily
abstract: 学习历程，一般都是大半夜。。。
---
---
# 2020年1月11日00点32分
熬夜学习。。。
只是简单的照着网页，改主题，那你看懂怎么改的了嘛？
偶能带自己写
---
# 2020年1月18日20点05分
1. [进阶版Live2D看板娘](https://blog.csdn.net/qq_39610915/article/details/90679768)  
搞了一晚上终于配置好了
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
---
# 2020年1月19日23点24分
今天是Huawei第一次年会：吃饭！抽奖（NULL）
😴
---
