require 'minitest/autorun'
require 'minitest/pride'


require_relative '../lib/currency_converter.rb'


class CurrencyConverterTest < Minitest::Test


  def test_currency_converter_exists
    assert(CurrencyConverter)
  end

  def test_codes_exists
    cc = CurrencyConverter.new
    assert_respond_to(cc, :codes)

  end

  def test_codes_returns_hash_codes
     cc = CurrencyConverter.new
     assert_equal({:usd=>1, :gbp=>0.76}, cc.codes)
  end

  def test_for_converter_convert
    cc = CurrencyConverter.new
    assert(7.60, :euro, cc.convert(1, :usd))

# Should be able to take a Currency object that has one currency code it knows and a requested currency code and return a new Currency object with the right amount in the new currency code. For example:
# currency_converter.convert( Currency.new(10, :USD), :EUR ) == Currency.new(7.40, :EUR)
  end

  def test_for_hash_merge_with_new_codes
    cc = CurrencyConverter.new

  end

end
 #Currency.new(10, :USD), :EUR ) == Currency.new(7.40, :EUR)

#:yen=>118.89, :usd=>1, :gbp=>0.76, :ruble=>68.49, :peso=>16.94

# done - Should be initialized with a Hash of currency codes to conversion rates (see link to rates below)
# done - At first, just make this work with two currency codes and conversation rates, with one rate being 1.0 and the other being the conversation rate. An example would be this: {USD: 1.0, EUR: 0.74}, which implies that a dollar is worth 0.74 euros.
# *Should be able to take a Currency object that has one currency code it knows and a requested currency code and return a new Currency object with the right amount in the new currency code. For example:
# *currency_converter.convert( Currency.new(10, :USD), :EUR ) == Currency.new(7.40, :EUR)
# Should be able to be created with a Hash of three or more currency codes and conversion rates. An example would be this: {USD: 1.0, EUR: 0.74, JPY: 120.0}, which implies that a dollar is worth 0.74 euros and that a dollar is worth 120 yen, but also that a euro is worth 120/0.74 = 162.2 yen.
# Should be able to convert Currency in any currency code it knows about to Currency in any other currency code it knows about.
# Should raise an UnknownCurrencyCodeError when you try to convert from or to a currency code it doesn’t know about.





