def two_sum?(arr, target_sum)
  arr.length.times do |idx1|
    ((idx1 + 1)...arr.length).each do |idx2|
      return true if arr[idx1] + arr[idx2] == target_sum
    end
  end
  false
end

arr = [0, 1, 5, 7]
two_sum?(arr, 6)

#sort, start iteration and return false if number is larger than target
#okay_two_sum? could use binary search
