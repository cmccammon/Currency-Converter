class Currency

attr_reader :amount_to_convert, :country_code  # => nil

  def initialize(amount, country)
    @amount_to_convert = amount    # => 1
    @country_code = country        # => "usd"
  end

  def equal
    obj1 = Currency.new(1, :usd)
    obj2 = Currency.new(1, :usd)
    obj1 == obj2
  end

end
