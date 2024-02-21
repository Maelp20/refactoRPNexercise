
class RPN

  def initialize(input)
    @input = input
  end

  def calculator
    expression = @input.split(" ")
    stack = []
    expression.each do |element|
      case element
        when "+"
          stack.push(num1 + num2)
        when "-"
          stack.push(num1 - num2)
        when "*"
          stack.push(num1 * num2)
        when "/"
          stack.push(num1 / num2)
        else
          stack.push(element.to_i)
      end
    end
  end

end

