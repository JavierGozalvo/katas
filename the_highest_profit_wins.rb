#Write a function that returns both the minimum and maximum number of the given list/array.

#[1,2,3,4,5] --> [1,5]
#[2334454,5] --> [5,2334454]
#[1]         --> [1,1]

#My solution#
def min_max(arr)

high = arr.max
low = arr.min
result = [] << low << high

result

end

#Wise solution#
def min_max(lst)
    return [lst.min, lst.max]
end

#WISER SOLUTION!#
def min_max(lst)
    lst.minmax
end