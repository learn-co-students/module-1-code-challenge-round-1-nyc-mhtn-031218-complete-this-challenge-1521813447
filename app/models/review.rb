class Review

  attr_accessor :review
  ALL = []

  def initialize(review)
    @review = review

    ALL << self
  end


  def customer(name)
    binding.pry
    Customer.find_by_name(name)

  end

  def restaurant


  end

  def self.all
    ALL
  end 


end



# Review.all
# returns all of the reviews
# Review#customer
# returns the customer for that given review
# Review#restaurant
# returns the restaurant for that given review
