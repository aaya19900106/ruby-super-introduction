#7-1
def order(item:)
  puts "#{item}ください"
end

order(item:"カフェラテ")

#7-2
def area(x)
  return x * x
end

puts area(3)

def dice
  return [1,2,3,4,5,6].sample
end

puts dice

#7-3
def order(item:)
  puts "#{item}ください"
end

order(item:"カフェラテ")
order(item:"モカ")

def dice
  x =  [1,2,3,4,5,6].sample
  if x == 1
    puts "もう1回"
    dice
  else
    puts x
  end
end

dice

def price(item)
  case item
    when "コーヒー"
      return 300
    when "カフェラテ"
      return 500
  end
end

puts price("コーヒー")

def price(item:,size:"ショート")
  if item == "コーヒー"
    x = 300
  elsif item == "カフェラテ"
    x = 400
  end

  if size == "ショート"
    return x
  elsif size == "トール"
    return x + 50
  elsif size == "ベンティ"
    return x + 100
  end
end

puts (price(item: "コーヒー"))

def order(drink)
  puts "#{drink}をください"
end

order("コーヒー")