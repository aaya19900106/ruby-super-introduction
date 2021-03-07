#4-1
p ["コーヒー","カフェラテ"]

#4-2
drinks = ["コーヒー","カフェラテ","モカ"]
puts drinks[1]
puts drinks.first
puts drinks.last


#4-3
puts ["コーヒー","カフェラテ"].push("モカ")
puts [2,3].unshift(1)
puts [1,2] + [3,4]


#4-4-1
drinks = ["リマ","アヤカ","マヤ"]

drinks.each do |drink|
  puts drink + "お願いします"
end

sum = 0
numbers = [1,2,3]
numbers.each do |number|
  sum = sum + number
end
puts sum