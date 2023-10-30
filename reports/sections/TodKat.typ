== 项目复现过程
=== 获取模型

```sh
cd projects/TodKat/save
wget https://todcatsaves.s3.eu-west-2.amazonaws.com/save.zip
unzip save.zip
```

=== 运行复现脚本
```sh
cd projects/TodKat/src
python TodKat_meld.py
```

== 项目总结
+ 项目使用 Transformer 编解码器机制。
