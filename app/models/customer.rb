class Customer
  attr_accessor :first_name, :last_name

  ALL = []
  ALL_NAMES = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    ALL << self
    ALL_NAMES << full_name
  end

  def self.all
    ALL

  end
  def self.all_names
    ALL_NAMES
  end

  def full_name
    "#{first_name} #{last_name}"
  end

#revisit not sure if name is correct. might be self
  def Customer.find_by_name(name)
    self.all.select do |person|
      # binding.pry
      person.full_name == name
    end
  end

  def add_review(restaurant, review)
    Restaurant.new(restaurant, self, review)
  end

  def Customer.find_all_by_first_name(first_name)
    self.all.select do |person|
      binding.pry
      person.first_name == name
    end
  end

end

# Customer.find_by_name(name)
# given a string of a full name,
# returns the first customer whose full name matches
# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name

#
