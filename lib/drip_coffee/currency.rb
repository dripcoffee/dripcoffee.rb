#
# We use Currency class to deal with all the numbers
#

require "bigdecimal"

module DripCoffee
  module Currency
    def number(num)
      BigDecimal.new(num)
    end
  end
end
