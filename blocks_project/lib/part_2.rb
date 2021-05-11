def all_words_capitalized?(array)
    array.all? { |word| word[0].upcase == word[0] && word[1..-1].downcase == word[1..-1]}
end

def no_valid_url?(array)
    valid_sites = ['.com', '.net', '.io', '.org']
    array.none? do |url|
        valid_sites.any? { |site| url.include?(site) }
    end
end

def any_passing_students?(array)
    array.any? { |student| student[:grades].sum / student[:grades].length >= 75 }
end