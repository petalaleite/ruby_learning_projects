require 'uri'
require 'net/http'
require 'json'

class APIManager
  @@api_object = {}

  def initialize
    initialize_api
  end

  def initialize_api
    response = api_request
    json = JSON.parse(response)
    json.each do |symbol, values|
      coin = Coin.new(symbol, values['USD'], values['GBP'], values['EUR'])
      @@api_object[symbol] = coin
    end
  end

  def api_request
    url = 'https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,DASH,LTC&tsyms=USD,EUR,GBP'
    uri = URI(url)
    Net::HTTP.get(uri)
  end

  def coin_list
    @@api_object.keys
  end
end