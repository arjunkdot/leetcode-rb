# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
    max = candies.max
    result = []

    candies.each_with_index do |c, i|
        result[i] = c + extra_candies >= max
    end

    return result
end
