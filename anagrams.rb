
#O(n) because only iterating once (n + n) = O(n)
def first_anagram?(string1,string2)
letters1= Hash.new(0)
letters2= Hash.new(0)
    string1.each_char {|char|letters1[char]+=1}
    string2.each_char {|char| letters2[char]+=1}
    letters1==letters2
end

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





p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "llives")    #=> true