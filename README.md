# hexo-1020
通过上传最初的hexo代码，发现有的仓未上传到github。所以hexo-1020first.zip是全部的代码。
学习各种编程：参考廖雪峰，菜鸟教程
学习制作网页，hexo是第三方，为搭建网址的框架
github是所预览的网页，以及存放hexo的代码，
linux命令总结：
安装git，node，hexo，关联GitHub
    1  node -v
    2  npm -v
    3  npm install -g hexo
    4  hexo -v
    5  hexo init
    6  npm install
    7  hexo s
    8  git config --global user.name zhizuping
    9  git config --global user.email yjpzxc@126.com
   10  npm install hexo-deployer-git --save
   11  ssh-keygen -t rsa -C "yjpzxc@126.com"
   12  ssh -T git@github.com
   14  hexo s
   16  hexo g
   17  hexo d
   25  git clone git@github.com:zhizuping/hexo-1020.git
   26  cd hexo-1020/  
   39  git add .
   41  git commit -m "first"
   42  git remote add origin git@github.com:zhizuping/hexo-1020.git
   45  git branch
   46  git push -u origin master
如何将代码上传到远端的项目分支？
   54  git branch yu1020
   55  git branch
   56  git checkout yu1020//切换新建的分支
   57  git add .
   58  git commit -m "新建分支，并新增zip与readme"
   59  git push -u origin yu1020//push到远端的项目分支
如何将项目分支的代码同步到master？
   60  git checkout master
   61  git merge origin/yu1020//com
   62  git push -u origin master//同步远端的master
   
git上传代码：https://www.cnblogs.com/520lqlst/p/8375976.html
git下载代码：git clone ssh
markdown：http://silencejql.coding.me/Hexo%20Markdown.html
hexo教程：https://www.cnblogs.com/wsmrzx/p/9439284.html

最初学习的另一种方法
git init //把这个目录变成Git可以管理的仓库
git add README.md //文件添加到仓库
git add . //不但可以跟单一文件，还可以跟通配符，更可以跟目录。一个点就把当前目录下所有未追踪的文件全部add了 
git commit -m "readme" //把文件提交到仓库
git remote add origin git@github.com:zhizuping/hexo.git//关联远程仓库
git push -u origin master //把本地库的所有内容推送到远程库上



