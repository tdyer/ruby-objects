class Song

  def initialize(stitle, sduration, sprice, sartist)
    @title = stitle
    @duration = sduration
    @price = sprice
    @artist = sartist
  end

  def display
    "#{@artist}'s #{@title} is #{@duration} minutes long and it's current price is #{@price}"
  end

  # getter for duration and price
  def duration
    @duration
  end

  def price
    @price
  end

  # setter
  def price=(new_price)
   @price = new_price
  end

  def new_price
    @new_price = @price + 50
  end

end
