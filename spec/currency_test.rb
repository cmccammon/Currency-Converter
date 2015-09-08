require 'minitest/autorun'
require 'minitest/pride'


require_relative '../lib/currency.rb'

class CurrencyTest < Minitest::Test
  def test_currency_exists
    assert(Currency)
  end

  def test_initialize_returns_amount_and_code
    assert(Currency.new(1, :usd))
  end

  def test_equal_two_class_objects_same_amount_same_country_code
    obj1 = Currency.new(1, :usd)
    obj2 = Currency.new(1, :usd)
    result = obj1 == obj2
    assert_equal(true, result)
  end

  def test_equal_two_class_objects_different_country_code
    obj1 = Currency.new(1, :usd)
    obj2 = Currency.new(1, :gbp)
    result = obj1 == obj2
    assert_equal(false, result)
  end

  def test_equal_two_class_objects_different_amount
    obj1 = Currency.new(1, :usd)
    obj2 = Currency.new(2, :usd)
    result = obj1 == obj2
    assert_equal(false, result)
  end

  def test_subtract_two_class_objects_of_same_country_code
    obj1 = Currency.new(1, :usd)
    obj2 = Currency.new(1, :usd)
    new_amount = obj1 - obj2
