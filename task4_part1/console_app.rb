require_relative 'convert_function'
require_relative 'validation'

class ConsoleApp
  include ConvertFunction
  include Validation

  def initialize
    input_value = ''
    while input_value != 'stop'
      begin
        puts 'введите градусы в цельсиях'
        input_value = gets.chomp
        check_input(input_value)
      rescue ValidationError => e
        puts e.message
      else
        puts convert_to_fahrenheit(input_value.to_f) if input_value != 'stop'
      end
    end
  end
end
