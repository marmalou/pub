require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")
require_relative("../customer.rb")


class DrinkTest < MiniTest::Test


 def setup
   @drink1 = Drink.new("Prosecco", 8.0, 3.0)
   @drink2 = Drink.new("vodka", 6.0, 4.0)
   @drink3 = Drink.new("whisky", 5.0, 6.0)
   @drink4 = Drink.new("kombucha", 4.0, 1.0)
 end

 def test_drink_name
   assert_equal("Prosecco", @drink1.name)
 end

 def test_drink_price
   assert_equal(8.0, @drink1.price)
 end

 def test_alcohol_level
   assert_equal(3.0, @drink1.alcohol_level)
 end

end
