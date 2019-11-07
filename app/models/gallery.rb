class Gallery

  attr_reader :name, :city

  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def artists
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artist_names
    all_paintings= Painting.all.select {|painting| painting.gallery == self}# painting.gallery go through painting object and pull the gallery. If it's equal to SELF, return the object (This returns all paintings in the gallery)
    all_paintings.map {|paintings| paintings.artist.name} # Returns the artist objects. 
  end

  def paintings
    all_paintings= Painting.all.select {|painting| painting.gallery == self}

  end

  def most_expensive_painting
    all_paintings= Painting.all.select {|painting| painting.gallery == self}
    all_paintings.max_by {|painting| painting.price}
  end
end
