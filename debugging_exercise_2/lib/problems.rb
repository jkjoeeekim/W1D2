# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require "byebug"

def largest_prime_factor(num)
    divisors = (2..num).select do |divisor|
        # debugger
        (num % divisor == 0) && is_prime?(divisor)
    end
    # debugger
    divisors.last
end

def is_prime?(num)
    return false if num < 2
    (2...num).all? { |div| num % div != 0 }
end

def unique_chars?(str)
    chars = str.split("")
    str.split("").uniq.length == chars.length
end

def dupe_indices(array)
    hash = Hash.new { |h, k| h[k] = [] }
    array.each_with_index { |ele, i| hash[ele] << i }
    hash.select { |k, v| hash[k].length > 1 }
end

def ana_array(arr1, arr2)
    arr1.all? { |ele| arr2.include?(ele) } && arr2.all? { |ele| arr1.include?(ele) }
end