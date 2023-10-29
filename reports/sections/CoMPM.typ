== 项目复现过程
=== 修改路径
在 `model.py` 中修改模型路径 ```python
model_path = f'~/models/huggingface/{model_type}'
```

=== 运行脚本
```sh
python3 train.py --cls emotion --dataset MELD
```

== 项目依赖

== 项目总结
