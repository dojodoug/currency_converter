### STORE CURRENCY ###

=begin
Currency objects:

Should be created with an amount and a currency code
Should equal another Currency object with the same amount and currency code
Should NOT equal another Currency object with different amount or currency code
Should be able to be added to another Currency object with the same currency code
Should be able to be subtracted by another Currency object with the same currency code
Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
Should be able to be multiplied by a Fixnum or Float and return a Currency object
Currency.new should be able to take one argument with a currency symbol embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency code. It can also take two arguments like before, one being the amount and the other being the currency code.
=end

class Currency

  attr_reader :currency_amount, :currency_code

  def initialize(amount, code)
    @currency_amount = amount
    @currency_code = code
  end

  def currency_amount
    @currency_amount
  end

  def currency_code
    @currency_code
  end

#  def to_s
#    "Item (#{@currency_amount}, #{@currency_code})"
#  end

  def ==(other_item)
    self.currency_amount == other_item.currency_amount && self.currency_code == other_item.currency_code
  end

end


#puts Currency.new("abcd",1)  == Currency.new("abcd",1)
#puts Currency.new("abcd",2)  == Currency.new("abcd",1)

#clams(amount, code) == monopoly_money(amount,code)

=begin
class Item
  attr_reader :currency_amount, :currency_code

  def initialize(amount, code)
    @currency_amount = amount
    @currency_code = code
  end

  def to_s
    "Item (#{@currency_amount}, #{@currency_code})"
  end

  def ==(other_item)
    self.currency_amount == other_item.currency_amount && self.currency_code == other_item.currency_code
  end
end

p Item.new("abcd",1)  == Item.new("abcd",1)
p Item.new("abcd",2)  == Item.new("abcd",1)
=end
