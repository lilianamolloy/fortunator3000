require_relative 'email'

def fortune_options fortune
    
        fortune_selection = 1
    
        while fortune_selection != 4
        puts "#{fortune}" #fortune cookie 
        puts "What would you like to do with your fortune?" 
        
        print """
        1. Tweet it
        2. Email it to a friend
        3. Save it for later / Create account
        4. Return to main menu
    
        Select option:
        """   

        fortune_selection = gets.strip.to_i

        case fortune_selection
        when 1
            tweet(fortune)
        when 2
            email(fortune)
        when 3
            # login or create account gem
        end
    end

end
