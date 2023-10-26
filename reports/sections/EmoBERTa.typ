== 项目复现过程
=== 获取数据集

```sh
git submodule init
git submodule update
```

=== 运行复现脚本
```sh
cd projects/erc
bash train_and_inference_Uni.sh
```

== 项目依赖
=== tae898/multimodal-datasets
Multimodal datasets.

== 项目总结
+ 项目有单独的数据集子项目，使项目结构更加清晰，很有参考意义，后续可参考该项目的思路。
+ 项目使用了超参数调优技术，通常来讲这项技术并没有太多缺点，后续可以考虑在其他网络中也添加类似内容。



