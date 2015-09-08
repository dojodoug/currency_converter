##### TESTING #####

require './store_currency.rb'
require './convert_currency.rb'

megabucks = Currency.new(1000.00, :USD)
clams = Currency.new("¥5.00")
monopoly_money = Currency.new(5.00, :YEN)

bank = Converter.new({:USD => 1.00, :YEN => 119.282, :EUR => 0.89531})
desired_currency = :EUR

######## TESTING CURRENCYCONVERTER OBJECTS #########

money3 = monopoly_money + clams
puts money3.inspect

converted_currency = bank.convert(megabucks, desired_currency)
puts converted_currency.inspect

######## TESTING CURRENCY OBJECTS #########

# puts clams == monopoly_money
# puts clams == megabucks
#
# add_currency = clams + monopoly_money
# puts add_currency.amount
#
# subtract_currency = clams - monopoly_money
# puts subtract_currency.amount
#
# multiply_currency = clams * (5.5)
# puts multiply_currency.amount
#
# error_currency = clams - megabucks
# puts error_currency.amount
