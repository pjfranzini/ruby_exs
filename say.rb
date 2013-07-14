class Say
	NUMARRAY = ['zero','one','two','three','four','five','six','seven','eight',
  		'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
  	    'sixteen','seventeen','eighteen','nineteen'] 
  	NUMTYS = ['twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
    # generating 16, 17, 18, 19, 60, 70, 80, 90 with code is what I did originally,
    # but this means many more lines of code to save defining a few more constants
  def initialize(number)
    @num = number
  end

  def in_english
  	if (@num<0 || @num>99)
  		"Number must be between 0 and 99, inclusive. (ArgumentError)"
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