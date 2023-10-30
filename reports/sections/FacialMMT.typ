== 项目复现过程
=== 下载数据集和模型
```python
baidupcs download FacialMMT

```

=== 链接数据集和模型
TODO

=== 运行脚本
```sh
python3 train.py --cls emotion --dataset MELD
```

== 项目问题
无法确定下述路径实际指代的位置，因此无法替换。 ```py
parser.add_argument('--meld_text_path', type=str,
default='/home/zrr/dataset/OpenDataLab___MELD/preprocess_data/ref/update')
```