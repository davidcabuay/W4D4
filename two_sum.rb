require "byebug"

#time = O(n^2) space=O(1)
def bad_two_sum?(arr, target_sum)
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target_sum
        end
    end
    return false
end

#time = O(n) only 1 iteration    space = O(n) because of input array
def okay_two_sum?(arr, target_sum)
    sorted = arr.sort
    i = 0
    j = sorted.length-1
    until i==j
        sum = sorted[i] + sorted[j] 
        a = sum <=> target_sum      
        return true if a == 0
        j -= 1 if a == 1
        i += 1 if a == -1
    end
    return false
end


def 

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false






