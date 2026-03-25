# frozen_string_literal: true

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  common = strs.min_by(&:length)
  strs.each do |str|
    common = common.chop while !str.start_with?(common) && !common.empty?
  end
  common
end
