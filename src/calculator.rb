class Calculator

  def call(operator:, num2:, num1:)
    case operator
    when '+'
      num1 + num2
    when "-"
      num1 - num2
    when "*"
      num1 * num2
    when "/"
      num1 / num2
    end
  end
end
