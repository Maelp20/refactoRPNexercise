require_relative '../src/RPNSolver.rb'
require 'rspec/autorun'

class TestRPM

  describe RPNSolver do
    subject(:rpn) {described_class.new}
    it "should return 3" do
      expect(rpn.solve("1 2 +")).to eq(3)
    end
    it "should return 6" do
      expect(rpn.solve("1 2 + 2 *")).to eq(6)
    end
    it "should return 5" do
      expect(rpn.solve("1 2 + 2 * 1 -")).to eq(5)
    end
    it "should return 14" do
      expect(rpn.solve("5 1 2 + 4 * 3 - +")).to eq(14)
    end
    it "should return 2" do
      expect(rpn.solve("4 2 5 * + 1 3 2 * + /")).to eq(2)
    end
  end

end
