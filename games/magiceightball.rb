#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run 
#will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.


messages = []

messages << "It is certain"
messages << "It is decidedly so"
messages << "Without a doubt"
messages << "Yes definitely"
messages << "You may rely on it"
messages << "My reply is yes"
messages << "Signs point to yes"
messages << "Reply hazy try again"
messages << "Ask again later"
messages << "Better not tell you now"
messages << "Cannot predict now"
messages << "Concentrate and ask again"
messages << "Don't count on it"
messages << "My reply is no"
messages << "My sources say no"
messages << "Outlook not so good"
messages << "Very doubtful"

def magic_ball_msgs(messages)
	messages[rand(messages.length - 1)]
end

while true
	puts
	puts
	puts "It's time to play magic 8-ball!"
	puts "Do you want to play?"
	break if gets.chomp.downcase.include?("no")
	puts
	puts "The magic 8-Ball says ---> #{magic_ball_msgs(messages)}"
end


