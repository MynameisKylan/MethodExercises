def caesar_cipher(str, shift_factor)
    str.split('').map do |c|
        if c == c.upcase
            shift(c, shift_factor).upcase
        else
            shift(c, shift_factor)
        end
    end.join
end

def shift(c, shift_factor)
    chars = ('a'..'z').to_a
    chars.include?(c.downcase) ? chars[(chars.index(c.downcase) + shift_factor) % 26] : c
end
