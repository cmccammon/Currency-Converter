require_relative '../lib/currency.rb'


class CurrencyConverter


  def codes
  country_codes = {:usd=>1, :gbp=>0.76}
  end

  def convert

Should be able to take a Currency object that has one currency code it
knows and a requested currency code and return a new Currency object with
 the right amount in the new currency code. For example:

currency_converter.convert( Currency.new(10, :USD), :EUR ) == Currency.new(7.40, :EUR)

  end



end




# def conversion
  #   currency_converter.convert( Currency.new(10, :USD), :EUR ) == Currency.new(7.40, :EUR)
  # end
