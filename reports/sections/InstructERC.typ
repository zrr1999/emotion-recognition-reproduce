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

=== 下载数据集


== 项目依赖
=== microsoft/DeepSpeed
DeepSpeed is a deep learning optimization library that makes distributed training and inference easy, efficient, and effective.

=== huggingface/peft
PEFT: State-of-the-art Parameter-Efficient Fine-Tuning.
