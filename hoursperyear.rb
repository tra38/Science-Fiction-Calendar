def hourcalcuator
  puts "Welcome to the Hours Per Year Calcuator."
  puts "This calcuator is useful if you are writing a sci-fi story set on another planet"
  puts "and do not remember how many hours are on said planet."
  puts "First, decide if you want to use Earth day/hour units or if you want to use the local Planet day/hour units when using this calcuator. EARTH or PLANET."
  conversionfactor = gets.chomp.upcase.to_str
  raise ArgumentError.new("You can only choose between EARTH and PLANET") unless (conversionfactor == "EARTH" || conversionfactor == "PLANET")
  puts "How many #{conversionfactor} days are in a year?"
  daysinyear = gets.chomp.to_f
  if conversionfactor == "EARTH"
  	hoursperday = 24
  else
  	puts "How many #{conversionfactor} hours does it take for the planet to rotate on its axis?"
  	hoursperday = gets.chomp.to_f
  end
  puts "There are #{hoursperday*daysinyear} #{conversionfactor} hours in 1 year."  
end
