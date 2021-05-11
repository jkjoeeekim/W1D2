def hipsterfy(str)
    count = 0
    str.reverse.split("").map do |char|
        if count == 1
            char
        elsif "aeiou".include?(char)
            count += 1
            ""
        else
            char
        end
    end.reverse.join("")
end

def vowel_counts(str)
    vowel_count = Hash.new(0)
    str.split("").each {|char| vowel_count[char.downcase] += 1 if "aeiou".include?(char.downcase)}
    vowel_count
end

def caesar_cipher(str, num)
    alpha = ("a".."z").to_a
    str.split("").map.with_index { |char, idx| alpha.include?(char) ? alpha[(alpha.index(char) + num) % 26] : char }.join("")
end