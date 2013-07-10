# test change
require 'highline/import'
answers = Array.new
#special_answer = ""
questions = ["What year were you born in?",
        "What month were you born in?",
      	"What day were you born on?"]
questions.each.with_index do |question,i|
    answers[i] = ask question
end
answers.each do |answer|
# puts answer
end
if answers[1].is_a? String 
   answers[1] = Date::MONTHNAMES.index(answers[1])
end

 time_now = Time.now
 old_time = Time.mktime(answers[0],answers[1],answers[2])
 spanks = time_now.year - old_time.year
 birthday_this_year = Time.mktime(time_now.year, old_time.month, old_time.day)
 puts time_now
 puts birthday_this_year
 if time_now < birthday_this_year
# # if (time_now.month < old_time.month) || ((time_now.month == old_time.month) && (time_now.day < old_time.day))
  		spanks = spanks -1
 end
 
 spanks.times.with_index do |i|
    puts  "#{i+1} SPANK!"
 end