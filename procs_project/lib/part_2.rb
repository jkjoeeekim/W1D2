def reverser(str)
    yield(str.reverse)
end

def word_changer(str)
    str.split(" ").map { |word| yield(word) }.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    prc1.call(num) > prc2.call(num) ? prc1.call(num) : prc2.call(num)
end

def and_selector(array, prc1, prc2)
    array.select { |int| prc1.call(int) && prc2.call(int) }
end

def alternating_mapper(array, prc1, prc2)
    array.map.with_index { |int, idx| idx % 2 == 0 ? prc1.call(int) : prc2.call(int) }
end

# Another way to solve using procs

# def reverser(str, &prc)
#     prc.call(str.reverse)
# end

# def word_changer(str, &prc)
#     str.split(" ").map { |word| prc.call(word) }.join(" ")
# end