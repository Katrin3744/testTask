module Validation
  DIGIT = /^[-+]?[1-9]([0-9]*)?(\.[0-9]*)?$/

  class ValidationError < StandardError
    def initialize(msg = 'Type of data is wrong, need Integer or Float')
      super(msg)
    end
  end

  def check_input(input_value)
    raise ValidationError if input_value != 'stop' && !input_value.match?(DIGIT)
  end
end
