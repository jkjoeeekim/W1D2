def select_even_nums(array)
    array.select { |ele| ele % 2 == 0 }
end

def reject_puppies(array)
    array.reject { |hash| hash["age"] < 3 }
end

def count_positive_subarrays(array)
    array.count { |arr| arr.sum > 0 }
end

def aba_translate(str)
    str.split("").map { |char| "aeiou".include?(char.downcase) ? "#{char}b#{char}" : char }.join("")
end

def aba_array(array)
    array.map { |word| aba_translate(word) }
end