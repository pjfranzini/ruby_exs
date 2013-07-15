class Say
	NUMARRAY = ['zero','one','two','three','four','five','six','seven','eight',
  		'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
  	    'sixteen','seventeen','eighteen','nineteen'] 
  NUMTYS = ['twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
  LOWERBOUND = 0
  UPPERBOUND = 99
    # generating 16, 17, 18, 19, 60, 70, 80, 90 with code is what I did originally,
    # but this means many more lines of code to save defining a few more constants
    # test
  def initialize(number)
    @num = number
  end

  def in_english
  	if (@num<LOWERBOUND || @num>UPPERBOUND)
  		raise ArgumentError,"Number must be between #{LOWERBOUND} and #{UPPERBOUND}, inclusive."
  	elsif (@num>=0 && @num<=19)
  		NUMARRAY[@num]
  	else
  		onesDigit = @num % 10
  		tensDigit = (@num-onesDigit)/10 - 2# subtract 2 since array starts at twenty
  		return "#{NUMTYS[tensDigit]}" if onesDigit == 0  
  		"#{NUMTYS[tensDigit]}-#{NUMARRAY[onesDigit]}"
  	end
  end
end
# uncomment these lines to do talking functionality in shell
# number = gets.to_i
# puts Say.new(number).in_english