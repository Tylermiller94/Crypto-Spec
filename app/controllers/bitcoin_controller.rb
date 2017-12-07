class BitcoinController < ApplicationController
  def index
    bitcoin_object = Bitcoin.new
    @price = bitcoin_object.get_price()
  end
end
