#import emoji: face
#import "@local/bone-document:0.1.0": document-init
#import "utils.typ": include-section

#show: document-init.with(
  title: "多模态情绪评估前沿论文复现情况",
  author: "詹荣瑞"
)

= 整体情况
== 复现数量
- 开源数量(15/20)
- 复现数量(3/20)

== 整体分析
+ 第一名使用 LLM，领先幅度明显。
+ 使用 RoBERTa 的模型有 16 个。


#include-section("InstructERC")
#include-section("FacialMMT")
#include-section("SPCL")
