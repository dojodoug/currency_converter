### CONVERT CURRENCY ###

require './store_currency'

class Converter

  attr_accessor :rate_exchange

  def initialize(rate_exchange)
    @rate_exchange = rate_exchange
  end

  def convert(money, desired_currency)
    money_in_hand = money.amount
    conversion_rate = @rate_exchange[desired_currency] / @rate_exchange[money.code]
    new_currency = money_in_hand * conversion_rate
    return Currency.new[new_currency, desired_currency]
  end
end
