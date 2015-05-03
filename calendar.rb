=begin
Pseudocode:
1) Calcuate how many days are in a year
2) Calcuate how many hours are in a day
3) Divide the number of days into equal number of months! Place remainder days somewhere! (refer to
 remainder days for more information)
 --Ideally, 12 months. If not, consider converting to an integer, and creating leap years.
4) Then, divide the months into 4 equal sections/seasons.
5) Divide a month into equal number of weeks.
--Ideally 4 weeks!
6) Determine how many days per week, based on how many days are in a month and how many 
weeks are in each month.

This is going to get messy fast.

REMAINDER DAYS:
Place the remainder days somewhere! One suggestion is to have them outside of the regular
months system, sorta like a halfway point. That would be a rather messy solution though.
=end

def calendar_system
  puts "Welcome to the Calendar Calcuator."
  puts "This calcuator is useful if you are writing a sci-fi story set on another planet."
  puts "We will make the assumption that your calendar system is based on your planet."
  puts "How many Planet Days are in an astronomical year?"
  astronomicalyear = gets.chomp.to_f
  check_for_moon(astronomicalyear)
end

def check_for_moon(astronomicalyear)
	puts "Does your planet have a moon? Yes or No?"
	moonanswer = gets.chomp.downcase
	case moonanswer
	when 'yes'
		puts "Good. One month will, more or less, equal the number of Planet Days it takes"
		puts "for your moon to rotate around your planet. So, how long will it take?"
		puts "And if your planet has multiple moons, choose the most prominent one."
		daysinmonth = gets.chomp.to_i
		totalmonths = ((astronomicalyear/daysinmonth).to_i)
		calendaryear = daysinmonth*totalmonths
		leapdays = (astronomicalyear- calendaryear).to_i
		monthsperseason = (totalmonths/4)
		puts "There are a total of #{totalmonths} months in our system."
		puts "In every month, there are #{daysinmonth} days..."
		puts "And a total of #{calendaryear} days in a year."
		puts "And a remainder of #{leapdays} leap days."
		puts "Each season lasts approx. #{monthsperseason} months."
	when 'no'
		puts "Then without a moon, you can't have a calendar system with months!"
		puts "That's okay, though. We'll use the idea of seasons instead."
		daysinseason = (astronomicalyear/4).to_i
		calendaryear = daysinseason*4
		leapdays = (astronomicalyear) - (calendaryear)
		puts "There are a total of 4 seasons on our planet."
		puts "In every season, there are #{daysinseason} days..."
		puts "And a total of #{calendaryear} days in a year."
		puts "And a remainder of #{leapdays} leap days."
	else
		puts "Invalid answer. Try again now."
		check_for_moon(astronomicalyear)
	end
end

calendar_system