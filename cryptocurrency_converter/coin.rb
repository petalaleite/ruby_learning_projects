class Coin
  attr_accessor :symbol, :USD, :GBR, :EUR 
  
  def initialize(symbol, usd, gbr, eur)
    @symbol = symbol
    @USD = usd
    @GBR = gbr
    @EUR = eur
end