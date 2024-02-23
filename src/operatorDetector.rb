class OperatorDetector

  def call(element)
    element == "+" || element == "-" || element == "*" || element == "/"
  end

end
