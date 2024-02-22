require_relative './operations'
class ElementProcessor

  def initialize(stack)
    @stack = stack
  end

  def process (element)
    if Operations.check_if_operator(element)
      result = Operations.operate(operator: element, num2: @stack.pop, num1: @stack.pop)
      @stack.push(result)
    else
      @stack.push(element.to_i)
    end
  end
end
