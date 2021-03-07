#6-1
menu = {coffee: 300, coffee_latte: 400}
puts menu[:coffee_latte]

menu = {"モカ" => "チョコレートシロップとミルク入り","カフェラテ" => "ミルク入り"}
puts menu["モカ"]

#6-2
menu = {coffee: 300, coffee_latte: 400}
menu[:tea] = 300
puts menu

menu = {coffee: 300, coffee_latte: 400}
menu.delete(:coffee)
puts menu

menu = {coffee: 300, coffee_latte: 400}
menu.default = "紅茶はありませんか？"
puts menu[:tea]

menu = {coffee: 300, coffee_latte: 400}
  if menu[:coffee_latte] <= 500
    puts "カフェラテが飲みたい！"
  end

hash = {}
hash.default = 0
array = "caffelatte".chars
array.each do |x|
  hash[x] = hash[x]+1
end
p hash

#6-3
menu = {"コーヒー" => 300,"カフェラテ" => 400}
menu.each do |key,value|
  puts "#{key}-#{value}円"
end

menu = {"コーヒー" => 300,"カフェラテ" => 400}
menu.each do |key,value|
  if value >= 350
  puts "#{key}-#{value}円"
  end
end

menu = {}
menu.each do |key,value|
  if value >= 350
  puts "#{key}-#{value}円"
  end
end

keys = []
menu = {"コーヒー" => 300,"カフェラテ" => 400}
 menu.each_key do |key|
  keys.push(key)
 end
 p keys