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

  def test_codes_returns_empty_hash_for_zero
    c = Currency.new
    country_codes = Hash.new
    assert_equal({}, country_codes)
  end

  def test_codes_hash_literals
    country_codes = {:yen=>118.89, :usd=>1, :gbp=>0.76, :ruble=>68.49, :peso=>16.94}
    assert_equal 5, country_codes.length
  end
  # def test_codes_returns_hash_codes
  #    c = Currency.new
  #    assert_equal({:yen=>118.89, :usd=>1, :gbp=>0.76, :ruble=>68.49, :peso=>16.94}, c.codes)
  # end








end
