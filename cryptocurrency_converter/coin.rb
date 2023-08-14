class Coin
  attr_accessor :symbol, :USD, :GBP, :EUR 
  
  def initialize(symbol, usd, gbp, eur)
    @symbol = symbol
    @USD = usd
    @GBP = gbp
    @EUR = eur
end
