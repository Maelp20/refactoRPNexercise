class Operations

  class << self

    def check_if_operator(element)
      element == "+" || element == "-" || element == "*" || element == "/"
    end

    def operate(operator:, num2:, num1:)
      case operator
      when "+"
        result = num1 + num2
      when "-"
        result = num1 - num2
      when "*"
        result = num1 * num2
      when "/"
        result = num1 / num2
      end
    end

  end

end
