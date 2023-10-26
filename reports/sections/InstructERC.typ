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
DeepSpeed is a deep learning optimization library that makes distributed training and inference easy, efficient, and effective.

=== huggingface/peft
PEFT: State-of-the-art Parameter-Efficient Fine-Tuning.

== 项目总结
+ 大模型的优势在于可以以零样本或低样本的方式完成特定任务，例如情绪评估，因此在许多应用场景下都有最好的表现。
+ 项目提供了零样本和 LORA 两种方式，基本涵盖了大模型的主要使用方式。
+ 项目使用了很多加速工具，尤其是针对大模型的加速工具，很有参考意义。