class Artist

  attr_reader :name, :years_experience, :paintings

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  
  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|p| p.artist == self}
  end

  def galleries
    paintings.map {|p| p.gallery}
  end

  def self.total_experience
    all.map {|a| a.years_experience}.reduce(0){|s,n| s+n}
  end

  def cities
   my_g = paintings.map {|p| p.gallery}
   my_g.city
  end

  def create_painting(title, price, gallery)
    Painting.new(title,price,gallery,self)
  end

  def self.most_prolific

  end

end
