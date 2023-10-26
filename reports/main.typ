#import emoji: face
#import "@local/bone-document:0.1.0": document-init
#import "utils.typ": include-section

#show: document-init.with(
  title: "多模态情绪评估前沿论文复现情况",
  author: "詹荣瑞"
)

#let todo(msg) = {
  [#text(fill: red, weight: "bold", size: 12pt)[TODO #msg]]
}

= 整体情况
== 复现进度
开源数量(15/20)

#table(
  columns: (auto, auto, 1fr, auto),
  inset: 10pt,
  align: horizon,
  [*模型名称*], [*模型类型*], [*模型特点*], [*复现进度*],
  [InstructERC], [大模型，多模态], [综合指标领先较多], [完成],
  [EmoBERTa], [单模态], [], [完成],
)

== 整体分析
+ 第一名使用 LLM，领先幅度明显。
+ 使用 RoBERTa 的模型有 16 个。


#include-section("InstructERC")
#include-section("FacialMMT")
#include-section("SPCL")
#include-section("EmoBERTa")
