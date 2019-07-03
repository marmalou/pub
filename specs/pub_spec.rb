require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class PubTest < MiniTest::Test


 def setup
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

def test_pubs_name
  assert_equal("The Lion's Head", @pub.name)
end

def test_till
  assert_equal(700.0, @pub.till)
end

def test_drinks
  assert_equal([@drink1, @drink2, @drink3, @drink4],
@pub.drinks)
end

def test_customer_checks
  assert_equal("Not old enough", @pub.check(@customer4, @drink1))

  assert_equal("Too drunk", @pub.check(@customer5, @drink1))
  assert_equal("Not enough money", @pub.check(@customer6, @drink1))
end

end
