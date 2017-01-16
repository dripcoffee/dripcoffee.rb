require "helper"

class TestVersion < Minitest::Test
  context nil do
    should "have" do
      refute_nil DripCoffee::VERSION
    end
  end
end
