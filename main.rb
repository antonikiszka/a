require_relative 'tree'
require_relative 'a'
require_relative 'dt'
require 'date'

tree = Tree.new

loop do
	system("clear")
	znak = "Podaj komede:"
	puts "#{znak}"
	kome = gets.chomp!

	tree.insert(kome)

	
	if kome == "skro"
		puts "\nPodaj, co chcesz skrocic:\n"
		dosk = gets.chomp!
		posk = shorten(dosk)
		puts "\n#{posk}"
	elsif kome == "exit"
		puts "\nProgram zwraca sterowanie do systemu z kodem 1 (Kod 1 - zamkniecie programu przez uzytkownika)"
		exit(1)
	elsif kome == "shtr"
		puts (tree.to_a * ",")
	elsif kome == "satr"
		File.open("tree", "w") do |file|
			file.puts (tree.to_a * ",")
		end
	elsif kome == "wiel"
		puts "\nKtorego roku wielkanoc obliczyc?\n"
		year = gets.chomp!
		date = easter(year.to_i)
		d = Date.new *date
		puts d
	else
		
		puts "\nNi mo taki komendy!!!!!!!!!!"
	end
	
	
	gets
end

