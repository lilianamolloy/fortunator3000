require "csv"
require "colorize"

def view_fortunes
    users = CSV.read("users.csv")

    puts "LOGIN".colorize(:green)
    puts "Enter user name:".colorize(:blue) 
    username = gets.strip.downcase

    puts "Enter password:".colorize(:blue) 
    password = gets.strip.downcase

    index1 = users.find_index do |user|
        username == user[0]
    end 

    index2 = users.find_index do |user|
        password == user[1]
    end 

    if index1 == index2
        puts "Your saved fortunes:".colorize(:green)
        counter = 2

        if counter == users[index1].length
            puts "You do not have any saved fortunes yet.".colorize(:green)
        end
        
        while counter < users[index1].length
                puts "\u{1F960} #{users[index1][counter]}".colorize(:green)
                counter += 1
        end
    else  
        puts "Incorrect username and password".colorize(:green)
    end
end