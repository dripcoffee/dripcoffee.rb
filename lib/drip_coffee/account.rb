module DripCoffee
  class Account
    attr_accessor :name, :bio
    attr_accessor :email

    def initialize
    end

    def to_s
      "#{@name}'s Account"
    end
  end
end
