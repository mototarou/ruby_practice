# 元配列
source = Array(1..5)

#新しく用意する配列
array  = Array.new

### ランダムを４回使用
4.times do
  array << source.delete(source.sample(1)[0])
end

### 残った数字を入れる
array << source[0]

p array
array