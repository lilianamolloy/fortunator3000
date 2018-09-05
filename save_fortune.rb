require "colorize"
require "csv"
require_relative "create_account"

def save_fortune fortune
    users = CSV.read("users.csv")

    puts "Do you have an account? [ y/n ]".colorize(:blue) 
    open_account = gets.strip.downcase

    if open_account == "y"
        puts "LOGIN"
        puts "Enter user name:".colorize(:blue) 
        username = gets.strip

        puts "Enter password:".colorize(:blue) 
        password = gets.strip

        index = users.find_index do |user|
            username == user[0]
        end 

        updated_user = []

        users[index].each do |user_info|
            updated_user << user_info 
        end 

        updated_user << fortune

        users[index] = updated_user

        CSV.open("users.csv", "w") do |csv|
            users.each do |user|
                csv << user
            end 
        end

        puts "Your fortune has been saved!".colorize(:green)

    else 
        create_account(fortune)
    end
end