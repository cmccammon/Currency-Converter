require_relative '../lib/currency.rb'


class CurrencyConverter


  def codes
  country_codes = {:usd=>1, :gbp=>0.76}
  end


  def convert(amount, country)
    amount * country = known

    known * requested = new currency object

  end


    # Should be able to take a Currency object that has one currency code it
    # knows and a requested currency code and return a new Currency object with
    # the right amount in the new currency code. For example:


end

# currency_converter = CurrencyConverter.new

    # currency_converter.convert( Currency.new(10, :USD), :EUR ) == Currency.new(7.40, :EUR)
currency_converter = CurrencyConverter.new
known = currency_converter.convert( Currency.new(10, :USD)

 currency_converter.convert(known, :EUR ) == Currency.new(7.40, :EUR)




# def conversion
  #   currency_converter.convert( Currency.new(10, :USD), :EUR ) == Currency.new(7.40, :EUR)
  # end
