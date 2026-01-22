# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
    # Add padding to start and end to avoid edge cases
    padded_flowerbed = [0] + flowerbed + [0]

    (1...padded_flowerbed.length).each do |i|
        if padded_flowerbed[i - 1] == 0 && padded_flowerbed[i] == 0 && padded_flowerbed[i + 1] == 0
            padded_flowerbed[i] = 1
            n -= 1
        end
    end

    return n <= 0
end
