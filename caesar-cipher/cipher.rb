
puts "provide a string to encrypt"

str_to_encrypt = gets.chomp

puts "provide a number for the shift factor"

shift_factor = gets.chomp.to_i





encrypted_string = " "

str_to_encrypt.each_char do |letter |
	is_upcase = letter == letter.upcase
	letter = letter.downcase

	if letter.ord + shift_factor > 122
		new_shift = shift_factor - 26
		past_letter_z = letter.ord + new_shift
		encrypted_letter = past_letter_z
		encrypted_letter = encrypted_letter.chr

		else
			encrypted_letter = letter.ord + shift_factor
			encrypted_letter = encrypted_letter.chr
	end
	encrypted_letter.upcase! if is_upcase
	encrypted_string << encrypted_letter
	end

puts encrypted_string

