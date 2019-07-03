require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")
require_relative("../food.rb")


class CustomerTest < MiniTest::Test


 def setup
   @food1 = Food.new("Tuna", 8.0, 3.0)
   @food2 = Food.new("crisps", 6.0, 4.0)
   @food3 = Food.new("avocado", 5.0, 6.0)
   @foods = [@food1, @food2, @food3]
   @customer1 = Customer.new("Huey", 18, 80.0, 4)
   @customer2 = Customer.new("Lisa", 38, 160.0, 2)
   @customer3 = Customer.new("Mike", 50, 50.0, 9)
   @customer4 = Customer.new("Gregor", 17, 1.0, 11)
   @drink1 = Drink.new("Prosecco", 8.0, 3.0)
   @drink2 = Drink.new("vodka", 6.0, 4.0)
   @drink3 = Drink.new("whisky", 5.0, 6.0)
   @drink4 = Drink.new("kombucha", 4.0, 1.0)
   @pub = Pub.new("The Lion's Head", 700.0,[@drink1, @drink2, @drink3, @drink4], @foods)
end

def test_age
   assert_equal(17, @customer4.age)
end

def test_name
   assert_equal("Gregor", @customer4.name)
end

def test_money
   assert_equal(1.0, @customer4.money)
end

def test_drunk_level
   assert_equal(11, @customer4.drunk_level)
end

# def test_buy_drink
#   @customer3.buy_drink(@pub, @drink4)
#   assert_equal(46.0, @customer3.money)
#   assert_equal(704.0, @pub.till)
# end

def test_change_drunk_level
   @customer2.change_drunk_level(@drink4)
  assert_equal(3, @customer2.drunk_level)
 end

def test_eat
  assert_equal(1.0, @customer1.eat(@food1))

end

end
