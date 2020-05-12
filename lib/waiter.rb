class Waiter
  attr_accessor :name, :experience

@@all = []

  def initialize(name, experience)
    @name = name
    @experience = experience
    @@all << self
  end

  def self.all
    @@all
  end

  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end

  def new_meal
    Meal.new(self, customer, total, tip=0)
  end

end
