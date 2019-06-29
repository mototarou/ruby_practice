# 元配列
source = [1,2,3,4,5]

#新しく用意する配列
array  = []

### ランダムを４回使用
array[0] = source.sample(1)[0]
source.delete(array[0])
array[1] = source.sample(1)[0]
source.delete(array[1])
array[2] = source.sample(1)[0]
source.delete(array[2])
array[3] = source.sample(1)[0]
source.delete(array[3])
###

### 残った数字を入れる
array[4] = source[0]

p source
p array