module TrafficLight
  def action(light)
    case light.downcase
    when 'green'
      'идти'
    when 'red'
      'стоять'
    when 'yellow'
      'ждать'
    end
  end
end
