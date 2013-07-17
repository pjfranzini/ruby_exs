class Fixnum
	def modThou
        self % 1000
    end
    def divThou
    	self / 1000
    end
    
    def split_atom
        [self.divThou, self.modThou] # 1234567890 -> [1234567, 890]
    end
end 

class Chunks
	LOWERBOUND = 0
    UPPERBOUND = 999999999999
	def initialize(number)
        @num = number
	end

    def bound_check
	  	if (@num<LOWERBOUND || @num>UPPERBOUND)
 # 		raise ArgumentError,"Number must be between #{LOWERBOUND} and #{UPPERBOUND}, inclusive."
            true
        end
    end


    def split
    # feeling my way towards the possiblity of an eventual recursive version
    	return "Number out of range" if bound_check
    	second = @num.split_atom
    	third = second[0].split_atom << second[1] #  [1234, 567] << 890
        fourth = third[0].split_atom << third[1] << third[2]
        answer = ""
        answer = "#{fourth[3]}" if fourth[3] !=0
        answer = "#{fourth[2]} thousand " << answer if fourth[2] !=0
        answer = "#{fourth[1]} million " << answer if fourth[1] !=0
        answer = "#{fourth[0]} billion " << answer if fourth[0] !=0
        answer.strip
    end
end