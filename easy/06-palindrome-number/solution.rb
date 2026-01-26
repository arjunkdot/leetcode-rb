# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  rev_x = x.to_s.reverse
  return rev_x == x.to_s
end
