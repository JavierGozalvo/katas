#You get an array of numbers, return the sum of all of the positives ones.

#Example [1,-4,7,12] => 1 + 7 + 12 = 20

#Note: if there is nothing to sum, the sum is default to 0.

def positive_sum(arr)

sum = 0
0 if arr.empty?

arr.each{|a| sum+=a if a > 0}
sum
end


#Better solution: Utilizar .select para quedarnos con solo los elementos positivos#
def positive_sum2(arr)
    arr.select{|num| num > 0}.inject{|sum,num| sum+=num}
end


#We can also refactor mor ethe inject method like this#
def positive_sum3(arr)
    arr.select{|num| num > 0}.inject(:+)
end