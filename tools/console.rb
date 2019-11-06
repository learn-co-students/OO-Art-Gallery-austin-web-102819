require_relative '../config/environment.rb'

buford = Artist.new("Buford Eeds", 1)
bob = Artist.new("Bob Ross", 30)
casey = Artist.new("Casey Lizaso", 10)

g1 = Gallery.new("First Gallery", "Austin")
g2 = Gallery.new("Second Gallery", "Houston")
g3 = Gallery.new("Third Gallery", "Dallas")

bufordP = buford.create_painting("Painting 1", 100, g1)
bobP = bob.create_painting("Painting 2", 200, g2)
caseyP = casey.create_painting("Painting 3", 300, g3)

p4 = Painting.new("Painting 4", 400, g1, buford)


binding.pry

puts "Bob Ross rules."
