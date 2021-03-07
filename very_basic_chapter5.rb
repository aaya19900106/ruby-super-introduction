#5-1
puts ["コーヒー","カフェラテ"].size
puts [1,2,3,4,5].sum

#5-2
puts ["モカ","カフェラテ","モカ"].uniq
puts ["リマ","マユカ","ミイヒ"].clear

#5-3
puts ["リマ","アヤカ","マユカ"].sample
puts "大吉 中吉 末吉 凶".split.sample

#5-4
puts [100,50,300].sort
puts [100,50,300].sort.reverse
puts "cba".reverse

#5-5
puts ["100","50","300"].join(",")
p "100,50,300".split(",")

#5-6
result = [1,2,3].map do |x|
  x *3
end
p result

result = ["cba","zyx"].map do |x|
  x.reverse
end
p result

result1 = ["aya","achi","Tama"].map do |x|
  x.downcase
end
p result1.sort