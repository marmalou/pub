require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")
require_relative("../food.rb")


class FoodTest < MiniTest::Test


 def setup

   @food1 = Food.new("Tuna", 8.0, 3.0)
   @food2 = Food.new("crisps", 6.0, 4.0)
   @food3 = Food.new("avocado", 5.0, 6.0)
   @drink4 = Drink.new("orange juice", 4.0, 1.0)
   @drink1 = Drink.new("Prosecco", 8.0, 3.0)
   @drink2 = Drink.new("vodka", 6.0, 4.0)
   @drink3 = Drink.new("whisky", 5.0, 6.0)
   @drink4 = Drink.new("kombucha", 4.0, 1.0)
   @customer1 = Customer.new("Huey", 18, 80.0, 4)
   @customer2 = Customer.new("Lisa", 38, 160.0, 2)
   @customer3 = Customer.new("Mike", 50, 50.0, 9)
   @customer4 = Customer.new("Gregor", 17, 1.0, 11)
   @customer5 = Customer.new("Gregor", 18, 12.0, 11)
   @customer6 = Customer.new("Gregor", 18, 1.0, 1)
   @pub = Pub.new("The Lion's Head", 700.0,[@drink1, @drink2, @drink3, @drink4], @foods))
end

def test_food_name
  assert_equal("Tuna", @food1.name)
end

def test_food_price
  assert_equal(8.0, @food1.price)
end

def test_rejuvenation_level
  assert_equal(3.0, @food1.rejuv)
end

#def test_
#end
end
