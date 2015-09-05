require 'minitest/autorun'
require 'minitest/pride'


require_relative '../lib/currency.rb'


class CurrencyTest < Minitest::Test

  def test_currency_exists
    assert(Currency)
  end
def test_codes_exists
    c = Currency.new
    assert_respond_to(c, :codes)
  end







end
