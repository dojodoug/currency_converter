### STORE CURRENCY ###

class Currency

  attr_accessor :amount, :code

  def initialize(amount, code = nil)
    hash = Hash.new{}
    hash = {"$" => :USD, "€" => :EUR, "¥" => :YEN}
    if code
      @amount = amount.to_f
      @code = code.to_sym
    else
      @amount = amount[1..-1].to_f
      @code = hash[amount[0]]
    end
  end

  def amount
    @amount
  end

  def code
    @code
  end

  def ==(other_item)
    @amount == other_item.amount && @code == other_item.code
  end

  def +(other_item)
    if @code == other_item.code
      Currency.new(@amount += other_item.amount, @code)
    else
      raise DifferentCurrencyCodeError, 'Different Currency Code Error'
    end
  end

  def -(other_item)
    if @code == other_item.code
      Currency.new(@amount -= other_item.amount, @code)
    else
      raise DifferentCurrencyCodeError, 'Different Currency Code Error'
    end
  end

  def *(ratio)
    Currency.new(@amount * ratio, @code)
  end

end

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
