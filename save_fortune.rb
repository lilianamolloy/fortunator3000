require "colorize"
require "csv"
require_relative "create_account"

def save_fortune fortune
    users = CSV.read("users.csv")

    puts "Do you have an account? [ y/n ]".colorize(:blue) 
    open_account = gets.strip.downcase

    if open_account == "y"
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

            updated_user = []

            users[index1].each do |user_info|
                updated_user << user_info 
            end 

            updated_user << fortune

            users[index1] = updated_user

            CSV.open("users.csv", "w") do |csv|
                users.each do |user|
                    csv << user
                end 
            end

            puts "Your fortune has been saved!".colorize(:green)
        
        else 
            puts "Incorrect username and password".colorize(:green)
        end

    else 
        create_account(fortune)
    end
end