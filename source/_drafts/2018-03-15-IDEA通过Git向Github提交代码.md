---
title: IDEA通过Git向Github提交代码
copyright: true
date: 2018-03-15 14:19:40
updated:
comments:
tags:
categories:
layout:
permalink:
top:
password:
---

<blockquote class="blockquote-center">它侧身于生活的污泥中，虽不甘心，却又畏首畏尾</blockquote>

* Git无法向Github提交代码，报错error:1407742E:SSL
* 利用git bash 可以正常向Github提交代码，但是JebBrains公司的IDEA、Webstorm、Pycharm却不可以，报错Could not read from remote repository

<!-- more -->

## 背景
年后来了以后，以前向Github提交过代码的项目都不能正常提交代码了，报错说远程仓库找不到，好不容易解决了远程仓库的问题，但开发工具中集成Git的JetBrans公司的三个产品都不能正常提交代码了，让我很不爽。

## 为什么年后以前的项目不能向Github提交代码了？
2018.02.22 GitHub 不再支持TLSv1/TLSv1.1了，公告地址：https://githubengineering.com/crypto-removal-notice/ 结果就是你不能正常向Github提交代码了，至于TLS什么的我觉得没必要去刻意去深究。

## 解决办法
* 下载安装两个东西（一路next的，注意切换自己的安装路径）
TortoiseGit-2.6.0.0-64bit.msi
Git-2.16.2-64-bit.exe

看别人的博客说搞定了这两个就可以正常提交代码了，但是我很幸运，还是不行。

* 如果你也不行，那就接着来
JetBrans公司产品File -> Settings  -> Git  -> SSH executable : Native

## 本地仓库跟远程仓库连接
* 先建立远程仓库的情况
git clone git@github.com:yanchongsheng/yanchongsheng.github.io.git（注意切换这个地址）

* 先建立本地仓库然后跟远程的某个仓库关联
git init
git remote add origin git@github.com:yanchongsheng/yanchongsheng.github.io.git
git pull origin master
注意：git remote...之后必须执行git pull

强制push
git push -u origin master -f



http://blog.csdn.net/virusnono/article/details/79361870

[error:1407742E:SSL]http://blog.csdn.net/qq_27093465/article/details/79558872
https://stackoverflow.com/questions/24215032/cant-update-no-tracked-branch
https://stackoverflow.com/questions/27566999/git-with-intellij-idea-could-not-read-from-remote-repository