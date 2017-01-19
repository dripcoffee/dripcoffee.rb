require "helper"

class TestAccount < Minitest::Test
  context "nil" do
    setup do
      @account = DripCoffee::Account.new
    end

    should "init attributes" do
      assert_equal "", @account.name
      assert_equal "", @account.bio
      assert_equal "'s Account", @account.to_s
    end

    should "assign attributes" do
      @account.name = "crisp"
      @account.bio = "i like drip coffee"
      assert_equal "crisp", @account.name
      assert_equal "i like drip coffee", @account.bio
      assert_equal "crisp's Account", @account.to_s
    end

    should "attach bank account" do
      assert_nil @account.attach_bank_account(1)
      assert_equal true, @account.attach_bank_account(BigDecimal.new(1)).is_a?(DripCoffee::Bank)
      assert_equal BigDecimal.new(1), @account.bank_account.remain
    end
  end
end
