---
title: Intellij IDEA 自动创建 测试类
copyright: true
date: 2018-03-28 20:03:03
updated:
comments:
tags: 工具手册
categories: 工具手册
layout:
permalink:
top: 0
password:
---

<blockquote class="blockquote-center">Intellij IDEA 自动创建 测试类 快捷键 Ctrl + Shift + T</blockquote>

<!-- more -->

## 导入 junit4 的 jar 包
```java
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>4.12</version>
      <scope>test</scope>
    </dependency>
```

## 在你所需要测试的类 或者 接口名称上按该快捷键 「Ctrl + Shift + T」
![001](/upload_image/idea_test01.png "001")

## 注意下图中红色标记的内容
![002](/upload_image/idea_test02.png "002")

## 注意测试类的生成位置
![003](/upload_image/idea_test03.png "003")

## 若点击该快捷键没反应，则可能你的快捷键被冲突掉了 或者 被改动过
点击File -> Settings -> keymap
![004](/upload_image/idea_test04.png "004")



