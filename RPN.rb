
class RPN

  def calculate(input)
    expression = input.split(" ")
    stack = []
    expression.each do |element|
      # puts "Element: #{element}"
      if element == "+" || element == "-" || element == "*" || element == "/"
        num2 = stack.pop
        num1 = stack.pop
      end
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
      # puts "Stack: #{stack}"
    end
    return stack.pop
  end


end
