require_relative 'traffic_light'
require_relative 'validation'

class ConsoleApp
  include TrafficLight
  include Validation

  def initialize
    input_value = ''
    while input_value != 'stop'
      begin
        puts 'введите цвет сфетафора'
        input_value = gets.chomp
        check_input(input_value)
      rescue ValidationError => e
        puts e.message
      else
        puts action(input_value) if input_value != 'stop'
      end
    end
  end
end
