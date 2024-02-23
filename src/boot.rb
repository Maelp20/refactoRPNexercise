require_relative "./calculator.rb"
require_relative "./inputParser.rb"
require_relative "./operatorDetector.rb"
require 'dry-container'
require 'dry-auto_inject'

class RPNContainer
  extend Dry::Container::Mixin

  namespace :RPN do
    namespace :tools do

      register(:parser) do
        InputParser.new
      end

      register(:calculator) do
        Calculator.new
      end

      register (:is_operator) do
        OperatorDetector.new
      end

    end
  end
end

RPNDependencies = Dry::AutoInject(RPNContainer)
