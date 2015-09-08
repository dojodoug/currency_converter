### CONVERT CURRENCY ###

require './store_currency'

class Converter

  attr_accessor :exchange_rate

  def initialize(exchange_rate)
    @exchange_rate = exchange_rate
  end

  def convert(money, desired_currency)
    # money_in_hand = money.amount
    # conversion_rate = @exchange_rate[desired_currency] / @exchange_rate[money.code]
    # new_currency = money_in_hand * conversion_rate

    if !exchange_rate.include?(money.code) && !exchange_rate.include?(desired_currency) != nil && !exchange_rate.has_value?(money.code)
      raise UnknownCurrencyCodeError
    else
      new_currency = money.amount * (@exchange_rate[desired_currency] / @exchange_rate[money.code])
      Currency.new(new_currency, desired_currency)
    end
  end
end
