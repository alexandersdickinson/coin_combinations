class Fixnum
  def coin_combinations
    result = []
    cents = self
    denominations = {"quarter" => 25, "dime" => 10, "nickel" => 5}
    denominations.each do |name, value|
      if cents / value > 0
        denom_amount = cents / value 
        element = "#{denom_amount} #{name}"
        element = element + 's' if denom_amount > 1
        result.push(element)
        cents = cents - denom_amount * value
      else
      end
    end
    if cents > 0
      element = "#{cents} cent"
      element = element + 's' if cents > 1
      result.push(element)
    else
    end
    result = result.join(', ')
    result = result.split(' ')
    result.insert(-3, 'and') if result.length() > 2
    result = 'Your change is ' + result.join(' ') + '.'
  end
end