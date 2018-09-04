require_relative "fortune_options"

def mood_menu fortunes
    mood_selection = 1

    while mood_selection != 5
    puts "Select your mood" 
    
    print """
    1. Make me laugh
    2. Pick me up
    3. Dark humour
    4. Insightful
    5. Return to main menu

    Select option:
    """
   
    mood_selection = gets.strip.to_i

        case mood_selection
        when 1
            selected_fortune = random_fortune fortunes[:make_me_laugh]
            fortune_options selected_fortune
        when 2
            selected_fortune = random_fortune fortunes[:pick_me_up]
            fortune_options selected_fortune
        when 3
            selected_fortune = random_fortune fortunes[:dark_humour]
            fortune_options selected_fortune
        when 4
            selected_fortune = random_fortune fortunes[:insightful]
            fortune_options selected_fortune
        else
        end

    end
end

def random_fortune array
    fortune = array.sample
    return fortune
end

