require 'byebug'
def first_anagram?(first, second)
  new_arr = first.chars.permutation.to_a
  !new_arr.select { |word| word.join("") == second }.empty?
end

# puts first_anagram?("gizmo", "sally")

def second_anagram?(first, second)
  return false if second.length != first.length

  first.chars.each do |char|
    return false if !second.include?(char)
    if second.include?(char)
      second.delete(char)
      first.delete(char)
    end
    break if first.empty? || second.empty?
  end
  true
end
# puts second_anagram?("gizmo", "sally")
# puts second_anagram?("elvis", "lives")

def third_anagram?(first, second)
  first.chars.sort == second.chars.sort
end

# puts third_anagram?("gizmo", "sally")
# puts third_anagram?("elvis", "lives")

def fourth_anagram?(first, second)
  first_hash = Hash.new(0)
  first.chars.each do |x|
    if first_hash.keys.include?(x)
      first_hash[x] += 1
    else
      first_hash[x] = 1
    end
  end
  second_hash = Hash.new(0)
  second.chars.each do |x|
    if second_hash.keys.include?(x)
      second_hash[x] += 1
    else
      second_hash[x] = 1
    end
  end

  first_hash == second_hash

end
puts fourth_anagram?("gizmo", "sally")
puts fourth_anagram?("elvis", "lives")
