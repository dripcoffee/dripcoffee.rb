module DripCoffee
  class Bank
    require "drip_coffee/currency"
    include DripCoffee::Currency

    attr_reader :remain

    def initialize(n = number("0"))
      @remain = n
    end

    def withdraw
    end

    def deposit
    end

    def save
    end
  end
end
