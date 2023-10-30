#import emoji: face
#import "@local/bone-document:0.1.0": document-init
#import "utils.typ": include-section
#show: document-init.with(title: "情绪评估前沿论文复现情况", author: "詹荣瑞")

#let compeleted = {
  [#text(fill: green, weight: "bold")[完成]]
}

#let work_in_report = {
  [#text(fill: blue, weight: "bold")[编写报告]]
}

#let work_in_program = {
  [#text(fill: rgb("#0061d9"), weight: "bold")[复现中]]
}

#let failed = {
  [#text(fill: red, weight: "bold")[存在问题]]
}

= 整体情况
== 整体分析
+ 前 20 名中开源数量有 15 个。
+ 第一名使用 LLM，领先幅度明显。
+ 使用 RoBERTa 的模型有 16 个。
== 复现进度

// typstfmt::off
#table(
  columns: (auto, auto, 1fr, auto),
  inset: 10pt,
  align: horizon,
  [*模型名称*], [*模型类型*], [*项目特点*], [*复现进度*],
  [InstructERC], [多模态，大模型], [基于LLM，综合指标领先较多], [#compeleted],
  [EmoBERTa], [单模态], [项目有单独的数据集子项目，使用超参数调优], [#compeleted],
  [FacialMMT], [多模态], [], [#failed],
  [UniMSE], [多模态], [], [#failed],
  [CoMPM], [单模态], [], [#work_in_report],
  [SPCL], [多模态], [], [#work_in_report],
  [SACL-LSTM], [单模态], [], [#work_in_report],
  [EmotionFlow], [], [], [#work_in_program],
  [Emotion-not-One], [], [], [#work_in_program],
  [DialogueCRN], [], [], [#work_in_program],
)
// typstfmt::on

#include-section("InstructERC")
#include-section("EmoBERTa")
#include-section("FacialMMT")
#include-section("UniMSE")
#include-section("CoMPM")
// #include-section("SPCL")
#include-section("SACL-LSTM")
