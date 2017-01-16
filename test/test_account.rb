require "helper"

class TestAccount < Minitest::Test
  context nil do
    setup do
      @account = DripCoffee::Account.new
      @account.name = "crisp"
      @account.bio = "i like drip coffee"
    end

    should "init attributes" do
      assert_equal "crisp", @account.name
      assert_equal "i like drip coffee", @account.bio
    end

    should "to string" do
      assert_equal "crisp's Account", @account.to_s
    end
  end
end
