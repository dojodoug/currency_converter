# Currency Conversion #

This Currency Conversion was created by defining two Currency classes. The first Currency Class named "Currency" represents and stores the amount of the currency. The second Currency Class named "Converter" processes the conversions between different Currency types.

## Currency objects: ##

* Created Currency Class with an amount and a currency code.
* Established Currency object to equal another Currency object with the same amount and currency code and NOT equal another Currency object with different amount or currency code.
* Currency object is able to be added and subtracted by another Currency object with the same currency code.
* A DifferentCurrencyCodeError is raised when you try to add or subtract two Currency objects with different currency codes.
* Currency object is able to be multiplied by a Fixnum or Float and return a Currency object.
Currency.new should be able to take one argument with a currency symbol embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency code. It can also take two arguments like before, one being the amount and the other being the currency code.

## CurrencyConverter objects: ##

* Created a Hash of currency codes and their corresponding exchange rates.
* The Converter is able to take a Currency object that has a known currency code and a requested currency code and return a new Currency object with the correct amount in the new currency code.
* The Converter is able to take a Currency object of the same type and return a Currency object equal to the one passed in.
* Able to convert Currency from any known currency code to Currency in any other known currency code.
* An UnknownCurrencyCodeError is raised when you try to convert from or to a currency code that is unknown.
