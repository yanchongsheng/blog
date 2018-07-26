---
title: Git GitHub 入门(一)
copyright: true
date: 2018-03-16 09:44:15
updated:
comments:
tags: Git+GitHub
categories: Git+GitHub
layout:
permalink:
top:
password:
---

<blockquote class="blockquote-center">它侧身于生活的污泥中，虽不甘心，却又畏首畏尾</blockquote>

Git 和 GitHub 入门学习笔记！

<!-- more -->

## 对待Git的态度
> 「Git是一个工具，没必要把时间浪费在那些“高级”但几乎永远不会用到的命令上。」所以学习Git够用就好，它仅仅只是一个工具，即使你用的再熟练，但真正的核心竞争力不在Git上，而是你用Git管理的内容上。

## 集中式vs分布式
### 集中式为什么必须联网？(集中式以 SVN为例)(分布式以 Git为例)
集中式完整的代码版本库在中央服务器上，注意是「完整的代码版本库」。我曾经想过，使用Git我是从服务器克隆一份代码下来，而使用SVN我也是从服务器克隆一份代码下来，然后开发，最后提交，提交的时候两者其实都是需要联网的（这里的提交对Git来说是push）。然而问题恰恰就出现在克隆下来的代码，一个是完整的代码版本库，一个相当于代码版本库某个时间节点的镜像。对于SVN来说，我本地没有历史版本库，如果服务器挂了，那么我也提交不了我本地的代码了，因为所有的代码，包括代码的改动，提交历史都是存储在服务器上的。假如服务器上的完整版本库丢了，那将是灾难性的，因为假如有3个人A、B、C同时从服务器拷贝了一份代码然后开发，A开发完然后提交了，这是A的版本镜像不是原来的了，这是服务器挂了，B、C开发完想要提交的时候会遇到什么问题？对，就是没法提交了。那么现在这种情况你怎么解决？以A、B、C谁的为标准，

分布式：

## Git为什么要有暂存区？没有暂存区可以不？
https://www.zhihu.com/question/19946553

## Git常用命令
```
全局配置：用户名和邮箱
git config --global user.name "Your Name"
git config --global user.email "email@example.com"

局部配置：用户名和邮箱
git config  user.name "Your Name"
git config  user.email "email@example.com"

查看用户名和邮箱
git config  user.name
git config  user.email

创建版本库 repository
新建一个文件夹 -> 切换到文件夹中 -> 执行 git init 命令 -> 创建完成

git add 文件名1 文件名1      一次添加单个或多个文件，中间用空格分割
git add -A .	            一次添加所有改变的文件（注意「.」）
git add -A                  表示添加所有内容，不管有没有改变过
git add .                   表示添加新文件和编辑过的文件不包括删除的文件
git add -u                  表示添加编辑或者删除的文件，不包括新添加的文件

git commit -m "本次提交说明"

git status                  返回仓库当前的状态

git diff 文件名              查看 工作区 和 暂存区 的变化，即在没有执行 git add 之前，使用 git diff 查看修改过的内容
git diff HEAD -- 文件名      查看 工作区、暂存区 和 版本库 里面最新版本的区别，即没有执行git commit之前
git diff --cached
未完待续

git log                      显示最近到最远的提交日志
git log --pretty=oneline     单行显示提交日志
可以看到 commit id（即版本号），采用 SHA1 计算出来的一个非常大的唯一的数字，用16进制表示

在 Git 中用 HEAD 表示当前版本，上一个版本就是HEAD^，上上一个版本就是HEAD^^，往上100个版本写100个^比较容易数不过来，所以写成HEAD~100

git reset --hard HEAD^       Git 版本回退，注意 HEAD 可以使用小写 head
git reset --hard 「commit id」使用 commit id 可以跳转到任意一个版本，不管是以前的还是以后的
Git版本回退非常快，因为Git在内部有个指向当前版本的HEAD指针，当你回退版本的时候，Git 仅仅是把 HEAD 指向你要回退的版本id，然后顺便把工作区的文件更新了。所以你让HEAD指向哪个版本号，你就把当前版本定位在哪。
git reflog                   用来记录你的每一次命令

撤销修改：
修改了 未执行 git add：git checkout -- 文件名           使用该命令可以丢弃工作区的修改（注意仅仅是工作区）
修改了 且执行 git add：git reset head 文件名            使用该命令可以将暂存区的内容重新放回到工作区中，再执行第一步
修改了 且提交 git commit：git reset -- hard head^       提交以后就只能回退到上一个版本了（注意你的其他修改也同时会被回退）
修改了 且提交到远程仓库了：……追不回来了，只能远程回滚了

向GitHub提交代码：
ssh-keygen -t rsa               指定rsa算法生成秘钥（执行该命令的前提是你安装了SSH）
git remote add origin https://github.com/yanchongsheng/aaa.git   将本地仓库跟远程仓库进行关联
这里的origin是远程仓库的名字「注意是远程仓库的名字，不是分支名，这个名字可以随便起，但一般都叫 origin ，便于区分，实际上我这里远程仓库的名字我本来起的是aaa，origin其实只是远程仓库的一个别名」
为什么要给远程仓库取名字？因为我们可能一个项目有多个远程仓库？比如 GitHub 一个，比如公司一个，这样的话提交到不同的远程仓库就需要指定不同的仓库名字了。
git push -u origin master       由于远程库是空的，我们第一次推送master分支时，加上了-u参数，Git不但会把本地的master分支内容推送的远程新的master分支，还会把本地的master分支和远程的master分支关联起来，在以后的推送或者拉取时就可以简化命令。这里的u可以看成union的简写，即本地master和远程master分支关联。这样以后提交的时候就可以把本地master分支的最新修改推送至GitHub

git push origin master 提交本地master分支
git pull origin master 拉取远程master分支
git clone https://github.com/yanchongsheng/aaa.git   克隆远程仓库到本地

GitHub 支持 Https 和 SSH 传输协议，所以你看到 GitHub提供了两种仓库地址，任意一种都是可以的，但是https协议不仅具有速度慢的“优点”，还具有每次推送必须输入口令的麻烦要求，所以能使用ssh就使用ssh吧。

Git分支管理：
创建分支：git branch 分支名
切换分支：git checkout 分支名
创建并切换分支：git checkout -b 分支名
查看分支：git branch
合并分支：git merge 分支名    将「分支名」所在分支的改动，合并到当前分支，即合并指定分支到当前分支
删除分支：git branch -d 分支名

git log --graph                                         命令可以看到分支合并图
git log --graph --pretty=oneline --abbrev-commit        查看精简版的分支合并图
```

所有的版本控制系统，其实只能跟踪文本文件的改动。而图片、视频这些二进制文件，虽然也能由版本控制系统管理，但没法跟踪文件的变化，只能把二进制文件每次改动串起来，也就是只知道图片从100KB改成了120KB，但到底改了啥，版本控制系统不知道，也没法知道。不幸的是，Microsoft的Word格式是二进制格式，因此，版本控制系统是没法跟踪Word文件的改动的。Windows自带的记事本在保存UTF-8编码的文件的时候会在每个文件开头添加了0xefbbbf（十六进制）的字符，所以可能遇到各种莫名奇妙的问题，谨慎使用windows记事本。



>
[参考博客] ：https://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000