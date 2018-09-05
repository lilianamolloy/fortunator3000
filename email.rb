require "colorize"
require 'pony'

def email fortune
    puts "Enter friends email address:".colorize(:blue) 
    friend_email = gets.strip

    Pony.mail(
        :to => friend_email, 
        :from => 'cookiemonster@gmail.com',
        :subject => 'Fortune cookie of the day', 
        :body => fortune
    )

    puts "The \u{1F960} has been sent to: #{friend_email}".colorize(:green) 
end

