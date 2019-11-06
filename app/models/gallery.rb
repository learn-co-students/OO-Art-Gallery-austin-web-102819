class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select{|p| p.gallery == self}
  end

  def artists
    my_p = self.paintings
    my_p.map {|p|p.artist}.uniq
  end

  def artist_names
    self.artists.map {|a|a.name}.uniq
  end

  def most_expensive_painting
    paintings.max {|p| p.price}

  end

  def self.all
    @@all
  end

end
