require "colorize"
require "csv"

def create_account fortune

    users = CSV.read("users.csv")

    puts "CREATE ACCOUNT".colorize(:green)

    puts "enter username".colorize(:blue)
    username = gets.strip.downcase

    puts "enter password".colorize(:blue)
    password = gets.strip.downcase

    if fortune != ''

        new_user = [username, password, fortune]

        users.each do |user|
            if username == user[0]
                puts "Username not available".colorize(:green)
                break
            else
                CSV.open("users.csv", "w") do |csv|
                    users.each do |user|
                        csv << user
                    end 
                    csv << new_user
                end
            end
        end

        puts "YAY! Your account has been created & fortune saved!".colorize(:green)
  
    else  

        new_user = [username, password]

        users.each do |user|
            if username == user[0]
                puts "Username unavailable".colorize(:green)
                break
            else 
                CSV.open("users.csv", "w") do |csv|
                    users.each do |user|
                        csv << user
                    end 
                    csv << new_user
                end
            end
        end

        puts "YAY! Your account has been created!".colorize(:green)    

    end
end
