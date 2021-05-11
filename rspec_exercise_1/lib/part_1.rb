def average(num1, num2)
    (num1 + num2) / 2.0
end

def average_array(array)
    array.sum / (array.length * 1.0)
end

def repeat(str, num)
    str * num
end

def yell(str)
    str.upcase.concat("!")
end

def alternating_case(str)
    str.split(" ").map.with_index {|word, idx| idx % 2 == 0 ? word.upcase : word.downcase}.join(" ")
end