require 'io/console'

def signup
    puts "INSCRIPTION"
    puts "Veuillez saisir votre mot de passe :"
    print ">"
    password = STDIN.noecho(&:gets).chomp
    puts "\nmot de passe enregistré !"
    return password
end

def login(oldPassword)
    puts "CONNEXION"
    puts "Veuillez saisir votre mot de passe :"
    print ">"
    newPassword = STDIN.noecho(&:gets).chomp

    if oldPassword == newPassword
        puts "mot de passe correcte !"
        return screenValid = true
    else
        puts "mot de passe INVALIDE !"
        login(oldPassword)
    end
end

def welcome_screen(screenValid)
    if screenValid == true
        puts "BIENVENUE dans ton espace !"
    end
end

def perform
    password = signup
    screenValid = login(password)
    welcome_screen(screenValid)
end

perform