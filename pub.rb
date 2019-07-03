class Pub

  attr_reader :name, :drinks, :food
  attr_accessor :till

  def initialize(name, till, drinks, food)
    @name = name
    @till = till
    @drinks = drinks
    @food = food
  end

  def check(customer, drink)
    return "Not old enough" if customer.age <= 17
    return "Too drunk" if (customer.drunk_level <= 9.9) == false
    return "Not enough money" if customer.money < drink.price
      customer.money -= drink.price()
      @till += drink.price()
      customer.change_drunk_level(drink)
    end




  end
