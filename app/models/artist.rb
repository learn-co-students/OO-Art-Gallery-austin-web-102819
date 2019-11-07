class Artist

  attr_reader :name, :years_experience, :paintings

  @@all_artists= []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all_artists << self
    @paintings= []
  end

  def self.all
    @@all_artists
  end

  def self.total_experience
    years= self.all.map {|artist| artist.years_experience} # Gives you a new array of what you're asking for.
    years.reduce {|sum, num| sum + num}
  end

  def create_painting(title, price, gallery)
    new_painting= Painting.new(title, price, gallery, self)
  end

  def galleries
    Painting.all.map {|painting| painting.gallery}
  end

  def cities
    Painting.all.map {|painting| painting.gallery.city}.uniq
  end

  def self.most_prolific
    

  end
end
