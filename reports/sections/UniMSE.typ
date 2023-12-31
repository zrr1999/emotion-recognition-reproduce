== 项目问题
目前直接使用现有公开代码复现应该是不行的，它里面的问题比较多，主要分为以下三点。
+ 数据集 readme 给的和代码需要的是不一样的，例如数据集里是 melt_data_0610，代码里需要的是
  melt_data_0424，且数据格式不一样直接修改路径无效，这个问题四月七号已经有人提出，至今作者没有回复。
+ 他本身缺少一些必要文件，在二月和五月作者补充过一些文件，但是目前缺少的文件还是比较多，例如
  train_convert.json，不过这个看起来可能也是因为第一条的问题。
+ 他没有给详细的依赖环境，只给出了部分版本，即使前两个问题解决了，后续也可能因为版本问题出现不可预测的情况。

== 解决思路
目前要复现的话，可能需要参考他的代码，直接重写一个新的，只不过花的时间会比较久。