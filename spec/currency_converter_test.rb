require 'minitest/autorun'
require 'minitest/pride'


require_relative '../lib/currency_converter.rb'


class CurrencyConverterTest < Minitest::Test

  def test_currency_converter_exists
    assert(CurrencyConverter)
  end

  def test_converter_exists
    cc = CurrencyConverter.new
    assert_respond_to(cc, :converter)
  end
















end
