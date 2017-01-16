module DripCoffee
  class Bank

    require "drip_coffee/currency"
    include Currency

    attr_reader :remain

    def initialize(n = number("0"))
      @remain = n
    end
  end
end