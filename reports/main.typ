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
== 模型对比

// typstfmt::off
#table(
  columns: (auto, auto, 1fr, auto),
  inset: 10pt,
  align: horizon,
  [*模型名称*], [*模型类型*], [*项目特点*], [*weighted-F1*],
  [InstructERC], [多模态，大模型], [基于LLM，综合指标领先较多], [69.15],
  [SPCL], [多模态], [], [67.25],
  [SACL-LSTM], [单模态], [], [66.86],
  [CoMPM], [单模态], [], [66.52],
  [EmotionFlow], [], [], [66.50],
  [Emotion-not-One], [], [], [66.49],
  [EmoBERTa], [单模态], [项目有单独的数据集子项目，使用超参数调优], [65.61],
  [DialogueCRN], [多模态], [由感知阶段、认知阶段和情绪分类器三部分组成], [58.39],
  [TodKat], [单模态], [使用 Transformer 编解码器机制], [65.47],
  [FacialMMT], [多模态], [], [#failed],
  [UniMSE], [多模态], [], [#failed]
)
// typstfmt::on

#include-section("InstructERC")
#include-section("EmoBERTa")
#include-section("FacialMMT")
#include-section("UniMSE")
#include-section("CoMPM")
#include-section("SPCL")
#include-section("SACL-LSTM")
#include-section("EmotionFlow")
#include-section("Emotion-not-One")
#include-section("DialogueCRN")
#include-section("TodKat")
