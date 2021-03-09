=begin
a = [1,2,3]
puts a.sum / a.size

p [1,2,3,2,1].uniq

array1 = [1,1,2]
array2 = array1.uniq
p array1.object_id
p array2.object_id

p [1,3,2,"2","3"].uniq
p [1,3,2,"2","3"].uniq { |n| n.to_s }

puts [1,2,3,3].sample(2)
puts [1,2,3,4].shuffle

puts [10,3,5].sort

puts ["ヒビ","ヒヒ","ヒピ","ヒーヒ"].sort

puts "こやあまくさ".reverse

puts ["カフェラテ","チーズケーキ"].join("と")
puts ["カフェラテ","チーズケーキ","ハンバーグ"].join("と")



order = ""
["カフェラテ","チーズケーキ"].each do |item|
  order = order + item
end
puts order



p "カフェラテ チーズケーキ ハンバーグ".split
p "カフェラテとチーズケーキとハンバーグ".split("と")

result = [1,2,3].map do |x|
  x * 2
end
p result

result = [100,200,300].map do |x|
  "#{x}円"
end
p result

result = ["abc","123"].map do |text|
  text.reverse
end
p result

result = ["abc","123"].map{|text| text.reverse}
p result

result = ["abc","123"].map(&:reverse)
p result

puts ("あいうえお")
p ( {:coffee => 300, :caffee_latte => 400} )
p "coffee".to_sym
p :coffee.to_s

{:coffee => 300, :caffee_latte => 400}
{coffee: 300,caffee_latte: 400}

menu = {coffee: 300,caffee_latte: 400}
p menu
p menu[:coffee]

student = {title: "Ruby Book",members: ["yano","beco"]}
p student[:members]
p student[:title]

niziu = {Rima: 19,Ayaka: 20}
twice = {Momo: 24,Sana: 24}
jyp = niziu.merge(twice)
p jyp
jyp.delete(:Sana)
p jyp

menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key,value|
	puts "#{key}は#{value}円です"
end

menu = {"コーヒー" => 300, "カフェラテ" => 450}
menu.each_key do |key|
  puts key
end

def area(x)
  x * x
end

puts area(2)

def thanks_and_receipt(receipt)
	puts "ありがとうございました！"
  unless receipt
  return
  end
	puts "こちら、レシートになります。"
end

thanks_and_receipt(true)

def thanks_and_receipt(receipt)
  greeting = "あざましたー！"
  unless receipt
    return greeting
  end
  greeting + "レシートでーす！"
end

puts thanks_and_receipt(true)
puts thanks_and_receipt(false)

def order(item:"コーヒー",size:"M")
  "#{item}を#{size}サイズでください"
end

puts order(item: "牛丼",size:"並盛")

text = "やっほー"

def hello
  puts text
end

hello

p 1.class
p 2.class
p 100.class

p "カフェラテ".class
p "hello".class
p "".class

p [1,2,3].class
p ["コーヒー","カフェラテ"].class
p [].class

p String.new
p String.new("カフェラテ")
p Array.new([2,3,4,5])

class Drink
  def name
    "いちご" + self.topping
  end
  def topping
    "フラペチーノ"
  end
end

drink = Drink.new
puts drink.name



class Drink
  def order(item)
    puts "#{item}ください"
    @name = item
  end

  def reorder
    puts "#{@name}おかわりください"
  end
  def name=(text)
    @name = text
  end
  def name
    @name
  end
end


drink = Drink.new
puts drink.name
p drink.instance_variables

class Drink
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

drink = Drink.new("モカ")
puts drink.name

class Cafe
  def self.welcome
    "いらっしゃい！"
  end
  def self.welcome_agein
    "よくきたね！" + welcome
  end
end

puts Cafe.welcome_agein


class Item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end

class Drink < Item
  def size
    @size
  end
  def size=(text)
    @size = text
  end
end

item = Item.new
item.name = "マフィン"

drink = Drink.new
drink.name = "コーラ"
drink.size = "相撲サイズ"

puts "#{item.name}と#{drink.name}の#{drink.size}がほしい！"

class Cafe
  def staff
    makanai
  end
  private
  def makanai
    "売れ残った野菜のスープ"
  end
end

cafe = Cafe.new
puts cafe.staff
puts cafe.makanai



module WhippedCream
  def whipped_cream
    @name += "ホイップクリーム"
  end
end

class Drink
  include WhippedCream
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

class Cake
  include WhippedCream
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
drink.whipped_cream
puts drink.name

cake = Cake.new("チョコケーキ")
cake.whipped_cream
puts cake.name

module Greeting
  def welcome
    "いらっしゃいなり"
  end
end

class Cafe
  extend Greeting
end

puts Cafe.welcome



module WhippedCream
  Price = 100
  def self.info
    "トッピング用フォーム"
  end
end
puts WhippedCream.info
puts WhippedCream::Price



puts Math::PI
puts Math.cos(Math::PI)



module BecoCafe
  class Coffee
    def self.info
      "アメリカンエスプレッソ"
    end
  end
end

module MachiCafe
  class Coffee
    def self.info
      "ミルクたっぷりラテ"
    end
  end
end

puts BecoCafe::Coffee.info
puts MachiCafe::Coffee.info

module WhippedCream
  def whipped_cream
    @name += "ホイップクリーム"
  end
end


module WhippedCream
  def self.info
    "トッピング用ホイップクリーム"
  end
end

require "awesome_print"
ap ["カフェラテ","モカ","コーヒー"]

require "sinatra"
get "/drink" do
  ["カフェラテ","モカ","コーヒー"].sample
end

=end

require "net/http"
require "uri"
require "json"
uri = URI.parse("https://igarashikuniaki.net/example.json")
result = Net::HTTP.get(uri)
hash = JSON.parse(result)
p hash
p hash["caffe latte"]