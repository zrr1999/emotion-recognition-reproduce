== 项目复现过程
=== 修改路径
在脚本中修改模型路径 ```sh
WORK_DIR="$(pwd)" # your work path
DATA_DIR="${WORK_DIR}/data/iemocap/IEMOCAP_features.pkl" # your data path

```

=== 运行脚本
```sh
cd reports/DialogueCRN/
python3 script/run_train_me.sh
```

输出结果 ```sh
dialoguecrn_base, meld
gamma:1, step_s: 0, step_p: 0
gamma:1, step_s: 0, step_p: 1
gamma:1, step_s: 0, step_p: 2
gamma:1, step_s: 0, step_p: 3
gamma:1, step_s: 1, step_p: 0
gamma:1, step_s: 1, step_p: 1
gamma:1, step_s: 1, step_p: 2
gamma:1, step_s: 1, step_p: 3
gamma:1, step_s: 2, step_p: 0
gamma:1, step_s: 2, step_p: 1
gamma:1, step_s: 2, step_p: 2
gamma:1, step_s: 2, step_p: 3
gamma:1, step_s: 3, step_p: 0
gamma:1, step_s: 3, step_p: 1
gamma:1, step_s: 3, step_p: 2
gamma:1, step_s: 3, step_p: 3
```