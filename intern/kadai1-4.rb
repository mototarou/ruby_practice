sources  = Array.new

i = rand(119)
j = i%6

# 配列を並び替える
class Array
    def swap!(a, b)
      self[a], self[b] = self[b], self[a]
    end
end

# 下３桁の枚数を並び替える
def resip(j,array)
    if j == 0
    elsif j == 1
        array.swap!(4,3)
    elsif j == 2
       array.swap!(2,3)
    elsif j == 3
        array.swap!(2,3)
        array.swap!(3,4)
    elsif j == 4
        array.swap!(2,3)
        array.swap!(2,4)
    elsif j == 5
        array.swap!(2,4)
    end
end

if i < 24  #1が先頭
    if i < 6
        sources = [1,2,3,4,5]
    elsif 6 <= i && i < 12
        sources = [1,3,2,4,5]
    elsif 12 <= i && i < 18
        sources = [1,4,2,3,5]
    else
        sources = [1,5,2,3,4]
    end
elsif 24 <= i && i < 48  #2が先頭
    if 24 <= i && i <= 30
        sources = [2,1,3,4,5]
    elsif 30 <= i && i < 36
        sources = [2,3,1,4,5]
    elsif 36 <= i && i < 42
        sources = [2,4,1,3,5]
    else
        sources = [2,5,1,3,4]
    end
elsif 48 <= i && i < 72  #3が先頭
    if 48 <= i && i < 54
        sources = [3,1,2,4,5]
    elsif 54 <= i && i < 60
        sources = [3,2,1,4,5]
    elsif 60 <= i && i < 66
        sources = [3,4,1,2,5]
    else
        sources = [3,5,1,2,4]
    end
elsif 72 <= i && i < 96 #4が先頭
    if 72 <= i && i < 78
        sources = [4,1,3,2,5]
    elsif 78 <= i && i < 84
        sources = [4,3,1,2,5]
    elsif 84 <= i && i < 90
        sources = [4,2,1,3,5]
    else
        sources = [4,5,1,3,2]
    end
else  #5が先頭
    if 96 <= i && i < 102
        sources = [5,1,3,4,2]
    elsif 102 <= i && i < 108
        sources = [5,3,1,4,2]
    elsif 108 <= i && i < 114
        sources = [5,4,1,3,2]
    else
        sources = [5,2,1,3,4]
    end
end

resip(j,sources)
p sources
