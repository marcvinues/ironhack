class Login

	attr_accessor :login, :password
	
	def initialize login,password
		@login = login
		@password = password
	end

		
	def login_check
		us = "Marc"
		pw = "12345"

		if us == @login and pw == @password
				puts "You are logged: #{us}"
				count_words
			elsif us != @login
				puts "Wrong username"
			elsif pw != @password
				puts "Wrong password"
			else
				puts "Get out!"
		end	

	end

	def count_words
		puts "Enter a phrase"
		phrase = gets.chomp
		len = phrase.length
		puts "You say: #{phrase} and the lenght is #{len}"
		
	end

end

	puts "Username"
	username = gets.chomp
	puts "Password"
	pass = gets.chomp


	loginnew = Login.new(username,pass)
	loginnew.login_check