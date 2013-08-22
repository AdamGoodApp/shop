class Checkout

	attr_accessor :pricing_rules


	items = {FR1: 3.11, SR1: 5.00, CF1: 11.23}


	

	puts "////Welcome to GA Superstore\\\\"

	puts "--We have for sale--"
	items.each do |items| puts items end

	puts

	puts "Please choose Item Code"
	input = gets.chomp.upcase
	val = input.to_sym
	hash_key = items[val]
	puts "How many will you like?"
	amount = gets.to_i
	total = hash_key * amount
	puts "The total cost is #{total}"

	co = Checkout.new
	co.pricing_rules = input



	if co.pricing_rules == "FR1" && amount >= 1
		puts "You Get A super sweet discount of buy one get one free"
		free = (total - 3.11).round(2)
		puts "Your total is now #{free}"
	elsif co.pricing_rules == "SR1" && amount >= 3
		puts "You Get A super sweet discount of buy 3 for 4.50"
		total2 = 4.50 * amount
		puts "Your total is now #{total2}"
	else
		puts "NO Discount Added"
	end


end