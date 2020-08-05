#spec/calculator_spec.rb
require './lib/calculator'

describe Calculator do
  calculator = Calculator.new
  describe "#add" do
    it 'returns the sum of two numbers' do
      expect(calculator.add(5,2)).to eql(7)
    end

    it 'returns the sum of more than two numbers' do
      expect(calculator.add(5,2,7)).to eql(14)
    end
  end

  describe "#multiply" do
    it 'returns the product of two numbers' do
      expect(calculator.multiply(2,4)).to eql(8)    
    end
  end
end