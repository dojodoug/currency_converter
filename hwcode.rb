require './store_currency.rb'

megabucks = Currency.new(1000.00, "MGB")
clams = Currency.new(5.00, "FMY")
monopoly_money = Currency.new(5.00, "FMY")

puts clams == monopoly_money
puts clams == megabucks

add_currency = clams + monopoly_money
puts add_currency.amount

subtract_currency = clams - monopoly_money
puts subtract_currency.amount
