module DripCoffee
  class Account
    require "drip_coffee/currency"
    include DripCoffee::Currency

    attr_accessor :name, :bio, :email
    attr_reader :bank_account, :temp_account
    attr_reader :op_records

    def initialize(init_info = {})
      @name = init_info[:name] || ""
      @bio = init_info[:bio] || ""
      @email = init_info[:email] || ""

      @temp_account = number(0)
      @op_records = []
    end

    def attach_bank_account(initial_money)
      if initial_money.is_a? BigDecimal
        @bank_account = DripCoffee::Bank.new(initial_money)
      else
        nil
      end
    end

    def use(n)
      return self if n <= 0

      if n.is_a? BigDecimal
        @temp_account = @temp_account - n
      else
        @temp_account = @temp_account - number(n)
      end

      @op_records << "use,#{n}"

      self
    end

    def to_buy(product = {})
    end

    def to_pay(bill = {})
    end

    def to_subscribe(service = {})
    end

    def for(some_reason = {})
    end

    def earn(n)
    end

    def confirm
    end

    def to_s
      "#{@name}'s Account"
    end
  end
end
