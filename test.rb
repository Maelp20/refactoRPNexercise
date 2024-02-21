require_relative './rpn.rb'
require 'rspec/autorun'

class TestRPN

  def test_rpn
    assert_equal 3, RPN.calculate("1 2 +")
    # assert_equal 2, RPN.calculate("4 2 /")
    # assert_equal 5, RPN.calculate("3 2 + 4 -")
    # assert_equal 3, RPN.calculate("3 2 + 4 - 2 +")
    # assert_equal 5, RPN.calculate("3 2 + 4 - 2 + 3 *")
    # assert_equal 15, RPN.calculate("3 2 + 4 - 2 + 3 * 5 +")
    # assert_equal 15, RPN.calculate("3 2 + 4 - 2 + 3 * 5 + 1 -")
  end

  it "should return 3" do
    expect(RPN.calculate("1 2 +")).to eq(3)
  end
end
