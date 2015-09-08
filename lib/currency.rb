class DifferentCurrencyCode < StandardError
end

class Currency

attr_reader :amount_to_convert, :country_code  # => nil

  def initialize(amount, country)
    @amount_to_convert = amount    # => 1
    @country_code = country        # => "usd"
  end

  def ==(other)
    if other.is_a? Currency
      if other.country_code == self.country_code && other.amount_to_convert == self.amount_to_convert
        true
      else
        return false
      end
    end
  end

  def -(other)
    if other.is_a? Currency
      if other.country_code == self.country_code
        new_amount = self.amount_to_convert - other.amount_to_convert
        new_amount = 0 if new_amount < 0
        Currency.new(new_amount, self.country_code)
      else
        raise DifferentCurrencyCode
      end
    end
  end

  def +(other)
    if other.is_a? Currency
      if other.country_code == self.country_code
        new_amount = self.amount_to_convert + other.amount_to_convert
        Currency.new(new_amount, self.country_code)
      else
        raise DifferentCurrencyCode
      end
    end
  end

  # def *(other)
  #   if other.is_a? Currency
  #     if other.amount_to_convert.is_a? Fixnum
  #       new_amount = self.amount_to_convert * other.amount_to_convert
  #       Currency.new(new_amount, self.country_code)
  #     else
  #       raise DifferentCurrencyCode
  #     end
  #   end
  # end

  # def *(other)
  #   if other.is_a? Currency
  #     if other.amount_to_convert.is_a? Float
  #       new_amount = self.amount_to_convert * other.amount_to_convert
  #       Currency.new(new_amount, self.country_code)
  #     else
  #       raise DifferentCurrencyCode
  #     end
  #   end
  # end

  def *(other)
    if other.is_? Currency
      if other.amount_to_convert.is_a Fixunum || Float
        new_amount = self.amount_to_convert * other.amount_to_convert
        Currency.new(new_amount, self.country_code)
      else
        raise DifferentCurrencyCode
      end
    end
  end
end
