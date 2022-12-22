
#O(n) because only iterating once (n + n) = O(n)
def first_anagram?(string1,string2)
letters1= Hash.new(0)
letters2= Hash.new(0)
    string1.each_char {|char|letters1[char]+=1}
    string2.each_char {|char| letters2[char]+=1}
    letters1==letters2
end

#O(n^3)
def second_anagram?(string1, string2)
    str2arr = string2.split("")
    string1.each_char.with_index do |char, i|
        if string2.include?(char)
            idx = str2arr.find_index(char)
            str2arr.delete_at(idx)
        end
    end
    str2arr.empty?
end

#O(n*logn) n + n + nlogn + nlogn => nlogn
def third_anagram?(string1, string2)
    first = string1.split("")
    second = string1.split("")
    f = first.sort 
    s= second.sort
    f == s
    # string1.split("").sort == string2.split("").sort  
end

# O(n) n + n => n
def fourth_anagram?(string1, string2)
    letters1= Hash.new(0)
    letters2= Hash.new(0)
        string1.each_char {|char|letters1[char]+=1}
        string2.each_char {|char| letters2[char]+=1}
        letters1==letters2
end

#O(n) n + n + n + n => n
def fifth_anagram?(string1, string2)
    letters = Hash.new(0)

    string1.each_char {|char| letters[char] += 1}
    string2.each_char {|char| letters[char] -= 1}
    value = letters.values
    value.all?{ |num| num == 0}
    
end


p fifth_anagram?("gizmo", "sally")    #=> false
p fifth_anagram?("elllvis", "lllives")    #=> true
