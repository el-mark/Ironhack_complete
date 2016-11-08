class PasswordText
	def initialize
		@username = 0
		@password = "pass"
		password_text_sequence
	end
	def password_text_sequence
		ask_username
		ask_password
		count_words
	end
	def ask_username
		puts "Can you enter your username please"
		@username = gets.chomp 
	end
	def ask_password
		puts "#{@username} can you enter your password please"
		input_password = gets.chomp
		if input_password == @password
			puts "Perfect you are loged in!"
		else
			puts "The password is wrong :/"
			ask_password
		end
	end
	def count_words
		puts "#{@username} can you enter a piece of text please"
		string = gets.chomp
		number_words = string.split.size
		puts "Your text have #{number_words} word(s)"

	end
end

firstlogin = PasswordText.new





	