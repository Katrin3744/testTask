module Validation
  LIGHT = %w[green red yellow]

  class ValidationError < StandardError
    def initialize(msg = 'No such light')
      super(msg)
    end
  end

  def check_input(input_value)
    raise ValidationError if input_value != 'stop' && !LIGHT.include?(input_value.downcase)
  end
end
