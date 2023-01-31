require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(10,4)
      expect(result).to eq(6)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.subtract(-7, -3)
      expect(result).to eq(-4)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(6, 3)
      expect(result).to eq(18)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.multiply(5, -4)
      expect(result).to eq(-20)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(15, 3)
      expect(result).to eq(5)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.divide(-8, 2)
      expect(result).to eq(-4)
    end
  end

  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      result = calculator.square(4)
      expect(result).to eq(16)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.square(-5)
      expect(result).to eq(25)
    end
  end
end