== 项目介绍
#image("../assets/erc/architecture.jpg")
在第一阶段，利用 Speaker identification 任务对语言模型进行预训练，
这个任务可以让模型学会捕捉不同说话者的说话风格，这一阶段的训练任务是为了预热模型参数，为后续的ERC任务做铺垫。 Speaker
identification任务是判别对话中的某句话是哪个说话者说的，具体做法是给定该任务对应的任务指令，
历史对话，以及整个对话所有说话者信息，让大模型生成当前这句话的说话者所对应的token。

#image("../assets/erc/rtm.jpg")
二阶段是两个任务的联合训练，分别是主任务 ERC 跟 emotion impact prediction task。
ERC任务是识别对话中某句话的情绪，具体做法是在给定该任务对应的任务指令instruction，历史对话，所有情绪标签集合， 以及通过dense
retrieval获得到的跟当前问题最接近的一个demonstarion条件下，让大模型生成当前对话的情绪标签。 而emotion impact
prediction task也是识别对话汇总某句话的情绪，跟主任务ERC的区别在于输入内容有所差异，任务指令，历史对话都作了调整，
移除了demonstration。这一阶段的训练损失由这两个任务的损失通过加权组成。

在推理时，InstructERC先要根据当前对话内容，通过dense retrieval从库中获得一个最接近的demonstratrion，
然后将任务指令，历史对话，所有情绪标签，demonstartion一同作为大模型的输入，让模型生成对应的情绪标签作为预测结果。

== 项目复现过程
=== 下载 LLM 模型
复现使用的 Atom-7b

```sh
export HF_HUB_ENABLE_HF_TRANSFER=true  # huggingface 推荐设置
huggingface-cli download FlagAlpha/Atom-7B-Chat --local-dir models/FlagAlpha/Atom-7B-Chat
```

=== 修改 shell 文件
- 替换掉文件开头的激活环境代码
- deepspeed_config 路径修改成 ./data_utils/deepspeed_config.json
- MODEL_PATH 改为下载模型所在位置

=== 链接路径
```sh
cd projects/InstructERC/code
mkdir YOUR_DATASET_COLLECTIONS_FOR_ERC_PATH
ln -s ../../original_data/* ./YOUR_DATASET_COLLECTIONS_FOR_ERC_PATH/
```

=== 运行复现脚本
```sh
cd projects/InstructERC/code
bash train_and_inference_Uni.sh
```

== 项目依赖
=== microsoft/DeepSpeed
DeepSpeed is a deep learning optimization library that makes distributed
training and inference easy, efficient, and effective.

=== huggingface/peft
PEFT: State-of-the-art Parameter-Efficient Fine-Tuning.

== 项目总结
+ 大模型的优势在于可以以零样本或低样本的方式完成特定任务，例如情绪评估，因此在许多应用场景下都有最好的表现。
+ 项目提供了零样本和 LORA 两种方式，基本涵盖了大模型的主要使用方式。
+ 项目使用了很多加速工具，尤其是针对大模型的加速工具，很有参考意义。
