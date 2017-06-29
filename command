echo "# pythonLearning" >> README.md
  git init
  git add README.md
  git commit -m "first commit"
  git remote add origin git@github.com:xuxin0612/pythonLearning.git
  git push -u origin master

创建仓库：
git init
添加新文件：
git add xx.txt
git status
git commit -m “add xx.txt”
修改文件：
vi xx.txt
git status
git diff xx.txt
git add xx.txt
git status
git commit -m “modify xx.txt”
git status
版本回退：
git log —-pretty=oneline
git reset —-hard HEAD^
git reset —-hard commit_id
查看命令历史：
git reflog
加入暂存区：(stage)
git add xx.txt
丢弃工作区的修改:
git checkout —- xx.txt
丢弃暂存区的修改：(unstage)
git reset HEAD xx.txt
删除文件
git rm xx.txt
git commit -m ‘rm xx.txt’
恢复
git checkout —- xx.txt
关联远程库
git remote add origin git@server-name:path/repo-name.git
第一次推送
git push -u origin master
推送
git push origin master
克隆库
git clone git@server-name:path/repo-name.git
创建切换分支
git checkout -b dev
相当于
git branch dev
git checkout dev
查看当前分支
git branch
切回master
git branch master
dev合并到master(Fast-forward)
git merge dev
删除dev分支
git branch -d dev
查看分支合并图
git log —-graph
合并分支
git merge —-no-ff -m “merge with no-ff” dev
保留现场
git stash
恢复现场
git stash list
git stash fetch stash@{0}
git stash drop stash@{0}
git stash pop
强行删除没有合并过的分支
git branch -D feature-PR3846
查看远程库详细
git remote -v
创建分支
git checkout -b dev origin/dev
推送到远程
git push origin dev
配置本地库的用户名和邮箱
git config user.name “scott”
git config user.email “xuxin0612@gmail.com”
拉取最新提交
git pull
建立本地分支和远程分支的关联
git branch —-set-upstream dev origin/dev
新建一个标签（默认 HEAD ）
git tag v1.0
git tag v1.0 commit_id
制定标签信息
git tag -a v2.0 -m “balabala”
查看所有标签
git tag
查看标签信息
git show v1.0
删除标签
git tag -d v1.0
推送标签到远程    
git push origin v1.0
推送全部标签到远程
git push origin —-tags
删除远程标签
git push origin :refs/tags/v0.9
让git显示颜色
git config —-global color.ui true
忽略文件
.gitignore
检查规则
git check-ignore -v 1.ini
配置别名
git config —-global alias.st status
