class Bitcoin


  def initialize
  end

  def get_price
    response = HTTParty.get('https://api.cryptonator.com/api/ticker/btc-usd')
    response["ticker"]["price"]
  end

end
