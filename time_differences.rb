
list = [0,3,5,4,-5,10,1,90]

#O(n^2)
def my_min(list)
    sorted = false
    while !sorted
        sorted = true
        
        (0...list.length - 1).each do |i|
            if list[i] > list[i+1]
                sorted = false
                list[i], list[i+1] = list[i+1], list[i]
            end
        end
    end
    list.first
end

#O(n)
def my_min(list)
    min = list[0]
    list.each {|ele| min = ele if min>ele}
    min
end



largest_contiguous_subsum(list) # => 8

# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7

# O(n^3)
def largest_contiguous_subsum(list)
    result = []
    (0...list.length).each do |i|
        (i...list.length).each do |j|
            result << list[i..j] 
        end
    end
    result.map! {|subarr| subarr.sum} 
    result.max
end


#O(n)
def largest_contiguous_subsum(list)
    largest_sum = list.first
    current_sum = list.first
    
    list[1..-1].each do |num|
        if current_sum < 0
            current_sum = num
        else
            current_sum +=num
        end
        largest_sum = current_sum if current_sum > largest_sum
    end
    
    largest_sum
end


# list = [5, 3, -7]
# list = [2, 3, -6, 7, -6, 7]
list = [-5, -1, -3]
p largest_contiguous_subsum(list)
