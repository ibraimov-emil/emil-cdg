def inp_word
    puts "Введите слово: "
    word = gets.chomp
    size_word = word.length
    puts (word.slice(size_word-2, size_word) == "cs") ? ("#{2**size_word}") : ("#{word.reverse}")
end

def add_pokemons
    print "Введите количество покемонов "
    i = gets.to_i
    pokemons = []
    i.times do |value|
        print "Введите имя покемона № #{value+=1} "
        name = gets.chomp
        print "Введите цвет покемона № #{value} "
        color = gets.chomp
        pokemons.push({name: name, color: color})
    end
    puts pokemons
end

input = nil

loop do
    
    puts "Выберите пункт меню"
    puts "1 - inp_word"
    puts "2 - add_pokemons"
    puts "-1 - quit"
    input = gets.to_i
    puts "Вы ввели #{input}"

    case input
    when 1
        inp_word
    when 2
        add_pokemons
    when -1
        break
    else
        puts "Вы ввели неверный символ"
    end
end
