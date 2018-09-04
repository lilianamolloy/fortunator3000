require_relative "account_create"

def save_fortune

    puts "Do you have an account?"
    open_account = gets.strip
    if "yes"
        puts "Enter user name:"
        user_name = gets.strip
        puts "Enter password:"
        password = gets.strip

    else "no"
    end

end