#3-1-1
a = 2
puts a < 365

#3-1-2
a = 3
puts a == 1 + 1

#3-2-1
season = "夏"
unless season == "夏"
  puts "あんまん食べたい"
else
  puts "桜もち食べたい"
end

#3-2-2
season = "夏"
if  season == "夏"
  puts "かき氷食べたい"
  puts "麦茶飲みたい"
end

#3-3
wallet = 100
if wallet >= 120
  puts "ジュース買おう"
else
  puts "お金じゃ変えない幸せがあるんだ"
end

#3-4-1
x = 80
if x <=0 || x >= 100
  puts "範囲外です"
end

#3-4-2
x = -1
y = -1
z = -1
if x >= 0 || y >= 0 || z >= 0
  puts "0以上がどれかあるね"
end

#3-5
season = "あ"
case season
  when "春"
    puts "桜で酒が飲める"
  when "夏"
    puts "ビーチでナンパされながら酒が飲める"
  else
    puts "とりあえず酒が飲める"
end

#3-6
2.times do
  puts "カフェラテ"
  puts "モカ"
  puts "モカ"
end
puts "フラペチーノ"