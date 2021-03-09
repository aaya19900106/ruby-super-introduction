=begin

#8-1
p ({:coffee => 300, :caffee_latte => 400}.class)
hash = Hash.new
p hash

#8-2
class CaffeLatte
end

caffee_latte = CaffeLatte.new
p caffee_latte.class

#8-3
class Item
  def name
    "チーズケーキ"
  end
end

item = Item.new
puts item.name

#8-4
class Item
  def initialize(text)
    @name = text
  end

  def name
    @name
  end
end

item = Item.new("マフィン")
puts item.name

#5-5
class Drink
  def todays_special
    "ホワイトモカ"
  end
end

=end

#5-6

class Item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end

class Food < Item
end

food = Food.new
p food.name=("チーズケーキ")
puts food.name