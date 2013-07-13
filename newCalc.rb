class Calculator
  def ask(question)
  	#inputString = gets
  	words = question.split
    words[words.length-1].gsub!("?","")
    #puts words
    words.map! do |word|
      word.downcase
    end
    #puts words
    puts "Invalid format" if words[0]!="what" || words[1]!="is"
    increment = 0
    num1 = words[2].to_i
    if words[3] == "multiplied"
      increment += 1
      answer = num1 * words[4+increment].to_i

    elsif words[3] == "divided"
      increment += 1
      answer = num1 / words[4+increment].to_i

    elsif words[3] == "minus"
      num2 = -words[4+increment].to_i
    else
      num2 = words[4+increment].to_i
    end

    if words.length <= 6
      unless num2.nil? 
        answer = num1+num2
      end
      return answer
    else
      if words[5+increment] == "multiplied"
        increment += 1
        unless num2.nil?
          answer = num1 + num2 * words[6+increment].to_i
        else
          answer = answer * words[6+increment].to_i
        end
      elsif words[5+increment] == "divided"
        increment += 1
        unless num2.nil?
          answer = num1 + num2 / words[6+increment].to_i
        else
          answer = answer / words[6+increment].to_i
        end
      elsif words[5+increment] == "minus"
        unless num2.nil?
          answer = num1 + num2 - words[6+increment].to_i
        else
          answer = answer - words[6+increment].to_i
        end
      else
        unless num2.nil?
          answer = num1 + num2 + words[6+increment].to_i
        else
          answer = answer + words[6+increment].to_i
        end
      end
    end


  	# puts $1
  	# puts $2
  	# puts $3
  # 	return $1.to_i + $3.to_i if $2.downcase == 'plus'
  # 	return $1.to_i - $3.to_i if $2.downcase == 'minus'
  # 	return $1.to_i * $3.to_i if $2.downcase == 'multiplied by'
  # 	return $1.to_i / $3.to_i if $2.downcase == 'divided by'
  end
end
# load 'calculator.rb'
# prob = Calculator.new
# prob.ask
# to_f if want float