def my_map(array)
    new_array = []
    array.each { |int| new_array << yield(int) }
    new_array
end

def my_select(array)
    new_array = []
    array.each { |int| new_array << int if yield(int) }
    new_array
end

def my_count(array)
    count = 0
    array.each { |int| count += 1 if yield(int) }
    count
end

def my_any?(array)
    array.each { |int| return true if yield(int) }
    false
end

def my_all?(array)
    array.each { |int| return false if !yield(int) }
    true
end

def my_none?(array)
    array.each { |int| return false if yield(int) }
    true
end

# Another way to solve using procs

# def my_map(array, &prc)
#     new_array = []
#     array.each { |int| new_array << prc.call(int) }
#     new_array
# end

# def my_select(array, &prc)
#     new_array = []
#     array.each { |int| new_array << int if prc.call(int) }
#     new_array
# end

# def my_count(array, &prc)
#     count = 0
#     array.each { |int| count += 1 if prc.call(int) }
#     count
# end

# def my_any?(array, &prc)
#     array.each { |int| return true if prc.call(int) }
#     false
# end

# def my_all?(array, &prc)
#     array.each { |int| return false if !prc.call(int) }
#     true
# end

# def my_none?(array, &prc)
#     array.each { |int| return false if prc.call(int) }
#     true
# end