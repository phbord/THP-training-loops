def videoGame
    step = step || 0
    run = 0

    while step < 10
        puts "Lancer le dé, en cliquant sur la touche \"Enter\" du clavier."
        print ">"
        key = gets

        if key == "\n"
            puts "OK #{key}"
            init = 0
            min = 1
            max = 10
            thimble = rand(1..6)
            case thimble
            when 5..6
                step += 1
                puts "tu es arrivé sur la marche #{step}"
            when 1
                step -= 1
                puts "tu es descendu à la marche #{step}"
            else
                puts "tu es resté sur la marche #{step}"
            end
            step = 0 if step < 0
            puts "=======\nGagné !\n=======" if step >= 10
        end
        run += 1
    end

    puts "\nTOTAL du nombre de tours : #{run}"
end

def average_finish_time
    total = 0
    max = 100
    for count in (0...max)
        total += rand(1..200)
    end
    average = total/max.to_f
    puts "********************************************************"
    puts "nombre de tours moyen (pour #{max} parties) : #{average}"
    puts "********************************************************"
end

def perform
    videoGame
    average_finish_time
end

perform