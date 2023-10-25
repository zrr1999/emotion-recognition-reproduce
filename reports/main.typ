#import "@local/bone-document:0.1.0": document-init

#show: document-init.with(
  title: "多模态情绪评估前沿论文复现情况",
  author: "詹荣瑞"
)

= 整体情况
== 复现数量
- 开源数量(15/20)
- 复现数量(/20)

== 整体分析
+ 第一名使用 LLM，领先幅度明显。
+ 使用 RoBERTa 的模型有 16 个。

= InstructERC 复现情况

== 项目复现过程
+ 下载模型及数据集
+ 下载 LLM 模型
+ 修复路径问题

== 项目主要依赖介绍
=== microsoft/DeepSpeed
DeepSpeed is a deep learning optimization library that makes distributed training and inference easy, efficient, and effective.

=== huggingface/peft
PEFT: State-of-the-art Parameter-Efficient Fine-Tuning.



= FacialMMT 复现情况

= SPCL 复现情况
