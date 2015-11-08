def shorten(str)
	(str[0..0] + str[1..-2].length.to_s + str[-1..-1]).upcase
end

x = shorten("Konstantynopolitanczykowianeczka")
puts x 