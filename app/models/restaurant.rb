class Restaurant
  attr_accessor :name, :review, :customer
  ALL = []
  # @@reviews= []
  def initialize(name, customer =nil, review =nil)
    @name = name
    @customer = customer
    @review = review
    # @reviews = []
    ALL << self
    # @@reviews << review
  end

  def self.all
    ALL
  end

  def Restaurant.find_by_name(name)
    self.all.select do |person|
      # binding.pry
      person.name == name
    end
  end

  def reviews
    self.all.select do |review|
      binding.pry
    end.first

  end

  def customer
    self.all.select do |cust|
      cust.review == self

  end

end




# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first
# restaurant that matches
# Restaurant#reviews
# returns an array of all reviews for that restaurant
# Restaurant#customers
# should return all of the customers who have
# written reviews of that restaurant.
