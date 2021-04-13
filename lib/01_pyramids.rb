blockPyramidText1 =
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"

def half_pyramid
    yield
    nb = gets.chomp.to_i
    i = 0
    char = "#"

    puts "Voici la pyramide :"
    while i < nb
        puts char = "#{char}"
        char = "#{char}#"
        i += 1
    end
end

def full_pyramid
    yield
    nb = gets.chomp.to_i
    i = 0
    char = "#"

    puts "Voici la pyramide :"
    while i < nb
        puts char.center(nb*2)
        char = "#{char}##"
        i += 1
    end
end

def wtf_pyramid
    yield
    nb = gets.chomp.to_i
    i = 0
    j = nb
    char = "#"

    puts "Voici la pyramide :"
    while i < nb
        puts char.center(nb*2)
        char = "#{char}##"
        i += 1
    end
    char = char.slice!(2..char.length)
    while j > 1
        char = char.slice!(2..char.length)
        puts char.center(nb*2)
        j -= 1
    end
end

half_pyramid {blockPyramidText1}
full_pyramid {blockPyramidText1}
wtf_pyramid {blockPyramidText1}