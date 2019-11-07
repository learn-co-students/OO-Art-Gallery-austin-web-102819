class Painting

  attr_reader :title, :price
  attr_accessor :gallery, :artist
  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery= gallery
    @artist= artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    price= self.all.map {|painting| painting.price}
    price.reduce {|sum, num| sum + num}
  end

end
