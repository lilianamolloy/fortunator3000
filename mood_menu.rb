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
        array = ["hello", "goodbye", "lili", "fiona"]
        new_array = array.sample
        puts new_array
    when 2
        array = ["hello", "goodbye", "lili", "fiona"]
        new_array = array.sample
        puts new_array
    when 3
        array = ["hello", "goodbye", "lili", "fiona"]
        new_array = array.sample
        puts new_array
    end


end