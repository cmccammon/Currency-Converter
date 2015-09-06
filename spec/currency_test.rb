
($1 == :usd)
0.76 == :gbp == $1

118.89 /0.76 ==

.76 gbp

1 gbp + 3 gbp



Currency objects:

1.done - Should be created with an amount and a currency code
2.done - Should equal another Currency object with the same amount and currency code
3.Should NOT equal another Currency object with different amount or currency code
4.Should be able to be added to another Currency object with the same currency code
5.Should be able to be subtracted by another Currency object with the same currency code
6.Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
7.Should be able to be multiplied by a Fixnum or Float and return a new Currency object
