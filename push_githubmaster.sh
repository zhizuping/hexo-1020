#!/bin/bash
#入参是提交每次代码的说明
#sh指的是提交GitHub到master，并生成网址
git add .
git commit -m $1
git push -u origin master
hexo g
hexo d
