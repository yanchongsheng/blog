---
title: URL、URI、URN的区别
copyright: true
date: 2018-06-09 19:05:41
updated:
comments:
tags:
categories:
layout:
permalink:
top:
password:
---

URI，是 uniform resource identifier 统一资源标识符，用来唯一的标识一个资源
URL，是 uniform resource locator 统一资源定位器，它是一种具体的URI，即 URL 可以用来标识一个资源，而且还指明了如何 locate 这个资源
URN，是 uniform resource name，统一资源命名，是通过名字来标识资源，URL 和 URN 都是一种 URI

URI 的功能是只要能唯一标识一个资源就行，可以是相对的，也可以是绝对的，
而 URL 是通过资源所在的位置唯一来标识一个资源，必须是绝对的，
而 URN 是通过资源名字的唯一来标识一个资源

URN：通过唯一且持久的名称来标识资源，但不一定告诉你如何在互联网上找到它。它通常以前缀 urn 开头。
URN 不仅限于识别文件，还可以识别想法和概念。当URN确实代表文档时，可以通过“解析器”将其翻译成URL。然后可以从URL下载文档。


URN：就像身份证号，不管你的住址怎么变，身份证号总是不变的，就能唯一定位到你，然后可以通过 URN 定位到 你的URL
URL：就是你的当前住址，每次搬家，你的住址都得跟着变



[什么是 URI、URL、URN、URC 和 Data URI？](https://juejin.im/entry/58ff07b2a0bb9f0065d1667f)
推荐阅读：[URI和URL的区别](http://www.cnblogs.com/gaojing/archive/2012/02/04/2413626.html)
[什么是HTTP，URI，URL，URN又是什么？](https://juejin.im/post/5a581059f265da3e3f4c9d5e)




















