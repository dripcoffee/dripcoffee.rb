require "helper"

class TestBank < Minitest::Test
  context nil do
    setup do
      @bank = DripCoffee::Bank.new
    end

    should "init with 0" do
      assert_equal 0, @bank.remain.to_i
    end
  end
end
