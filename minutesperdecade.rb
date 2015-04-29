def minutecalcuator
	puts "This is a Minute to Decade calcuator."
	puts "This calcuator is useful if you are writing a sci-fi story set on another planet"
	puts "and need to determine how many minutes per decade is on said planet."
	puts "First, decide if you want to use Earth day/hour units or if you want to use the local Planet day/hour units when using this calcuator. EARTH or PLANET."
	conversionfactor = gets.chomp.upcase.to_str
	raise ArgumentError.new("You can only choose between EARTH and PLANET") unless (conversionfactor == "EARTH" || conversionfactor == "PLANET")
	puts "How many #{conversionfactor} days are in a year?"
	daysinyear = gets.chomp.to_f
	puts "Good. We will make the following assumptions: one decade is equal to 10 years, and one minute is equal to 1/60th of an hour."
	minutesperhour = 60
	if conversionfactor == "PLANET"
		puts "Since you choose PLANET, we have to know the hours per day on your planet."
		puts "How many #{conversionfactor} hours does it take for your planet to rotate on its axis? (One rotation is equal to a single day.)"
		hoursperday = gets.chomp.to_f
	else
		hoursperday = 24
	end
	puts "There are #{hoursperday*daysinyear*60*10} #{conversionfactor} minutes in 1 decade."
end
