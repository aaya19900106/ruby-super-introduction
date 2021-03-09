require_relative "hi"
class Drink
  include WhippedCream
  def name
    @name
  end
  def initialize
    @name = "モカ"
  end
end

mocha = Drink.new
mocha.whipped_cream
puts mocha.name