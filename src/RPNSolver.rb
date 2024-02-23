require_relative "./boot"

class RPNSolver
  include RPNDependencies['RPN.tools.parser', 'RPN.tools.calculator', 'RPN.tools.is_operator']

  def call(input)
    expression = @parser.call(input)
    stack = []
    expression.each do |element|
      if @is_operator.call(element)
        result = @calculator.call(operator: element, num2: stack.pop, num1: stack.pop)
        stack.push(result)
      else
        stack.push(element.to_i)
      end
    end
    stack.pop
  end
end
