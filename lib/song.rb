class Song

  attr_reader :title, :duration
  attr_accessor :price

  def initialize(title, artist, duration,price = -1)
    @title = title
    @artist = artist
    @duration = duration
    @price = price
  end

end
