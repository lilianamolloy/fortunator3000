require "csv"

def view_fortunes
    users = CSV.read("users.csv")

    puts "LOGIN"
    puts "Enter user name:".colorize(:blue) 
    username = gets.strip

    puts "Enter password:".colorize(:blue) 
    password = gets.strip

    index = users.find_index do |user|
        username == user[0]
    end 

    counter = 2
    while counter < users[index].length
        puts "\u{1F960} #{users[index][counter]}"
        counter += 1
    end
        
end