# @param {String} c
# @return {Boolean}
def is_alphanumeric?(c)
  c.match?(/[a-zA-Z0-9]/)
end

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    l = 0
    r = s.length - 1

    while l <= r
        # If the leftmost charcter is not an alphanumeric, 
        # increament the position by 1.
        unless is_alphanumeric?(s[l])
            l += 1
            next
        end 

        # Do the same for rightmost charcter as well,
        # but decrement if it's not an alphaumeric
        unless is_alphanumeric?(s[r])
            r -= 1
            next
        end 

        # If first and last charcter don't match return false.
        unless s[l].downcase == s[r].downcase 
            return false
        end

        # Otherwise move the left & right pointers accordingly
        l += 1
        r -= 1
    end

    return true
end

