# @param {String} s
# @return {String}
def reverse_vowels(s)
    v = Set.new(['a', 'e', 'i', 'o', 'u'])
    l = 0
    r = s.length - 1

    while l < r
        if !v.include?(s[l].downcase)
            l += 1
        elsif !v.include?(s[r].downcase)
            r -= 1
        else
            s[l], s[r] = s[r], s[l]
            l += 1
            r -= 1
        end
    end

    return s
end
