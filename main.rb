menu_selection = 1

while menu_selection != 4
    puts "Main Menu" # fortune cookie emoji
    
    print """
    1. A cookie for you
    2. A cookie for a friend
    3. Create user account
    4. Exit

    Select option:
    """
   
   menu_selection = gets.strip.to_i

    case menu_selection
    when 1
        puts 'one'
    when 2
        puts 'two'
    when 3
        puts 'three'
    end

end