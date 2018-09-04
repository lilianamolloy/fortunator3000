def mood_menu
    mood_selection = 1

    while mood_selection != 4
    puts "Select your mood" 
    
    print """
    1. Make me laugh
    2. Pick me up
    3. Dark humour
    4. Return to main menu

    Select option:
    """
   
    mood_selection = gets.strip.to_i

        case mood_selection
        when 1
            selected_fortune = random_fortune make_me_laugh
        when 2
            selected_fortune = random_fortune pick_me_up
        when 3
            selected_fortune = random_fortune dark_humour
        end

    end
end

def random_fortune array
    fortune = array.sample
    return fortune
end

