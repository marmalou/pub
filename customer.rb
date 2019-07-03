class Customer

  attr_reader :name, :age, :drunk_level
  attr_accessor :money

  def initialize(name, age, money, drunk_level)
    @name = name
    @age = age
    @money = money
    @drunk_level = drunk_level
end



# def buy_drink(pub, drink)
#
#   @money -= drink.price()
#   pub.till += drink.price()
# end

def change_drunk_level(drink)
@drunk_level += drink.alcohol_level
end

def eat(food)
  @drunk_level -= food.rejuv
end

end
