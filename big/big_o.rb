require 'byebug'
#phase 1 is o(n^2)

def phase_1_min(list)
  smallest = 0
  list.each_with_index do |num1, indx1|
    list.each_with_index do |num2, indx2|
      next if indx1 == indx2
      smallest = num1 if num1 < num2 && num1 < smallest
    end
  end
  smallest
end

#phase 2 is 0(n)

def my_min(list)
  smallest_num = nil
  list.each do |num|
    if smallest_num == nil || smallest_num > num
      smallest_num = num
    end
  end
  smallest_num
end

 # list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
 # p phase_1_min(list)
 # p my_min(list)

#phase 1
 def sub_sums(list)
   num = []
   list.length.times do |start|
     (start...list.length).each do |length|
       sub_array = list[start..(start + length)]
       num << sub_array.inject(:+)
     end
   end
   num.max
 end

#phase 2


def better_sums(list)
  i = 0
  biggest = list[i]
   temp = 0
   while i < list.length
     temp += list[i]
     if temp < biggest
       list.shift
       temp = 0
       i = 0
     elsif temp > biggest
       biggest = temp
     end
     i += 1
   end
   biggest
 end
#   list.each_with_index do |x, idx|
#     # debugger
#     big = 0
#     num1 = x
#     if idx + 1 < list.length
#       num2 = x + list[idx + 1]
#     end
#     # debugger
#     if idx + 2 < list.length
#       num3 = num2 + list[idx + 2]
#     end
#     unless num2.nil? && num3.nil?
#       big = num1 if num1 > num2 && num1 > num3
#       big = num2 if num2 > num1 && num2 > num3
#       big = num3 if num3 > num1 && num3 > num2
#     end
#     unless num2.nil?
#       big = num1f num1 > num2
#       big = num2 if num2 > num1
#     end
#     biggest = big if num2.nil? && num3.nil?
#
#     print "big = #{big}"
#
#     biggest = big if big > biggest
#
#     debugger
#   end
#   p biggest
# end

list = [5, 3, -7] #=> 8
p better_sums(list)
