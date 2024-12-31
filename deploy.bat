#!/bin/bash

# 切换到 gh-pages 分支
git checkout gh-pages

# 删除旧的静态文件
rm -rf *

# 将 Flask 应用生成的静态文件复制到当前目录
cp -R /path/to/your/static/files/* .

# 添加、提交并推送到远程仓库
git add .
git commit -m "Deploy Flask app"
git push origin gh-pages

# 切换回主分支
git checkout master
