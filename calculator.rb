class Calculator
  def ask(question)
  	#inputString = gets
  	/what is (\S?\d+) (\S+\s?\S*) (\S?\d+)\?/i.match(question)
  	# puts $1
  	# puts $2
  	# puts $3
  	return $1.to_i + $3.to_i if $2.downcase == 'plus'
  	return $1.to_i - $3.to_i if $2.downcase == 'minus'
  	return $1.to_i * $3.to_i if $2.downcase == 'multiplied by'
  	return $1.to_i / $3.to_i if $2.downcase == 'divided by'
  end
end
# load 'calculator.rb'
# prob = Calculator.new
# prob.ask
# to_f if want float