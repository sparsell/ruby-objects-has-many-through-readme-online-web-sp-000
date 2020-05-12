class Customer
  attr_accessor :waiter, :total, :tip
  @@all = []

  def initialize (name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

# initializes a meal using the current Customer instance, a provided Waiter instance and a total
  def new_meal
    Meal.new(waiter, total)
  end
  #returns an Array of Meal instances associated with this customer
  def meals

  end

  def waiters
#returns an Array of Waiter instances associated with this customer's meals
  end

end
