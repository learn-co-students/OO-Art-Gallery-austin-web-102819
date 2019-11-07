require_relative '../config/environment.rb'


# artist
john= Artist.new("John", 10)
judy= Artist.new("Judy", 20)
lucy= Artist.new("Lucy", 10)

#gallery
canopy= Gallery.new("Canopy", "ATX")

johnspaintint= john.create_painting("Hellooooo", 100000, canopy)
johnspainting2= john.create_painting("NOOOOOO", 10000, canopy)
judyspainting= judy.create_painting("YESSS", 1000000, canopy)
judyspainting2= judy.create_painting("BYE BITCH", 12, canopy)
lucyspainting= lucy.create_painting("GETOUTTAHERE", 25, canopy)
lucyspainting2= lucy.create_painting("I HATE THIS", 19, canopy)


binding.pry

puts "Bob Ross rules."
