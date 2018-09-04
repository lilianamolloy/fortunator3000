def fortune_options fortune
    
        fortune_selection = 1
    
        while fortune_selection != 3
        puts "#{fortune}" #fortune cookie 
        puts "What would you like to do with your fortune?" 
        
        print """
        1. Tweet it
        2. Email it to a friend
        3. Save it for later / Create account
    
        Select option:
        """   

        fortune_selection = gets.strip.to_i
        end

        case fortune_selection
        when 1
            puts # tweet gem
            #ask for info
        when 2
            puts # email gem
            #ask for info
        when 3
            # login or create account gem
        end

end
