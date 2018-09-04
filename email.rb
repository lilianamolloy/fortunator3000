require 'pony'

def email fortune
    puts "Enter friends email address:"
    friend_email = gets.strip

    Pony.mail(
        :to => friend_email, 
        :from => 'cookiemonster@gmail.com',
        :subject => 'Fortune cookie of the day', 
        :body => fortune
    )
end

