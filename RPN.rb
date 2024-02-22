require_relative "./parse_input.rb"
require_relative "./element_processor.rb"
class RPN

  def calculate(input)
    expression = ParseInput.parse(input)
    stack = []
    elementProcessor = ElementProcessor.new(stack)
    expression.each do |element|
      elementProcessor.process(element)
    end
    return stack.pop
  end
end
