class Currency

def codes #added argument rate to hash
  country_codes = {}
  country_codes.merge!(:yen=>118.89, :usd=>1, :gbp=>0.76, :ruble=>68.49, :peso=>16.94)

end


end

# ~> NoMethodError
# ~> undefined method `codes' for Currency:Class
# ~>
# ~> /Users/chris/theironyard/week2/homework/currency/lib/currency.rb:11:in `<main>'
