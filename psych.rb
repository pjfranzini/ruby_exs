require 'highline/import'
answers = Array.new
special_answer = ""
questions = [["Do you have a cat?",false], ["Do you have a dog?", false],
        ["How old were you when you started high school?",false],["Do you have a parrot?", false], 
      	["Are you a pirate or a ninja?", true], ["How old are you?" ,false] ,
      	["Do you play the mandolin?", false], ["Do you like trees?", false] ,
      	["What is your mother's name?", false], ["What is your father's name?", false] ]
questions.shuffle!

questions.each.with_index do |question,i|
	if question[1]  # flag for when we care about validation
		answers[i] = ask question[0] do |q|
			q.validate = /^(pirate|ninja|Pirate|Ninja)$/
		end
		if answers[i].casecmp("pirate") == 0 
			special_answer = ask ("What kind of pirate are you?")
		else
			special_answer = ask ("What kind of ninja are you?")
		end
		# puts special_answer
    else
        answers[i] = ask question[0]
    end
    # if question[1]   (a way to do this without validation method)
    # 	until answers[i].casecmp("pirate") == 0 || answers[i].casecmp("ninja") == 0
    # 		puts "Bad answer! Try again."
    # 		answers[i] = ask question[0]
    # 	end
    # end

end

questions.each.with_index do |question,i|
	if question[1]  # flag for the question we want answered
		say "You are a #{special_answer} #{answers[i]}!"
	end
    
end

#puts answers   test that it puts out the whole array of answers for extension
