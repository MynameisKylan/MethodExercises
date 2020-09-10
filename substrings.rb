def substrings(str, subs)
    found = {}
    str.split(' ').reduce(found) do |hash, word|
        subs.each do |substring|
            if word.downcase.include?(substring)
                hash[substring] = (hash[substring]) ? hash[substring] + 1 : hash[substring] = 1
            end
        end
        hash
    end
    found
end