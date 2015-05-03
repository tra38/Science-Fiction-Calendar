def convert_earth_to_planet
	puts "Sometimes, it's very hard to really remember a planet's unique day/hour unit."
	puts "So this convertor is here for you."
	puts "First, how many Earth days are in a Planet Year?"
	earthdaysinplanetyear = gets.chomp.to_f
	puts "Now, how many Earth Days are in a Planet Day?"
	earthdaysinplanetday = gets.chomp.to_f
	puts "There are #{earthdaysinplanetyear/earthdaysinplanetday} days are in one Planet Year!"
	puts "There are #{earthdaysinplanetday * 24} hours in one Planet Day!"
end

convert_earth_to_planet