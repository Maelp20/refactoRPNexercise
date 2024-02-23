class Calculator

  def call(operator:, num2:, num1:)
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
