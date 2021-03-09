require_relative "hi"

module ChocolateChip
  def chocolate_chip
    @name += "チョコレートチップ"
  end
end

module EspressoShot
  Price = 100
end

class Drink
  include ChocolateChip
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
drink.chocolate_chip
puts drink.name
puts EspressoShot::Price
puts WhippedCream::info