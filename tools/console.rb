require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


roger = Customer.new("Roger", "Perez")
james = Customer.new("James","Wood")
art = Customer.new("Art","Wood")
ben = Customer.new("Ben","frank")
art2= Customer.new("Art", "Wood ")

Customer.find_by_name("Art Wood")

roger.add_review("The Thunder", "Best Place ever")
james.add_review("The Thunder", "Best  ever")
art.add_review("Subway", "Okay")
roger.add_review("BJ Burger", "Best Best ever")
subway = Restaurant.new("Subway")
james.add_review("Subway", "Best  ever")

roger.add_review("Subway", " Best ever")
Customer.find_all_by_first_name("Roger")

puts Customer.find_all_by_first_name("Roger")

puts Customer.find_by_name("Art Wood")





binding.pry
hi = "hello"
