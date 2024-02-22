class ElementProcessor

  def initialize(stack)
    @stack = stack
  end

  def process (element)
    if element == "+" || element == "-" || element == "*" || element == "/"
      num2 = @stack.pop
      num1 = @stack.pop
    end
    case element
      when "+"
        @stack.push(num1 + num2)
      when "-"
        @stack.push(num1 - num2)
      when "*"
        @stack.push(num1 * num2)
      when "/"
        @stack.push(num1 / num2)
      else
        @stack.push(element.to_i)
    end
  end
end
