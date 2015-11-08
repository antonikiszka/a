require_relative 'tree'
require_relative 'a'

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
	else
		puts "\nNi mo taki komendy!!!!!!!!!!"
	end
	
	
	gets
end

