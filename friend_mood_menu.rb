require "colorize"
require "terminal-table"
require_relative "email"

def friend_mood_menu fortunes

    make_me_laugh = fortunes[0]
    pick_me_up = fortunes[1]
    dark_humour = fortunes[2]
    insightful = fortunes[3]
    
    friend_mood_selection = 1

    while friend_mood_selection != 5

    rows = [
        [1, 'Make me laugh'.colorize(:blue)],
        [2, 'Pick me up'.colorize(:blue)],
        [3, 'Dark humour'.colorize(:blue)],
        [4, 'Insightful'.colorize(:blue)],
        [5, 'Return to main menu'.colorize(:blue)]
    ]

    table = Terminal::Table.new :title => "\u{1F960}  SELECT THE MOOD FOR YOUR FRIEND \u{1F960}".colorize(:blue), :rows => rows
    puts table 
    print "Select option: ".colorize(:blue) 
   
    friend_mood_selection = gets.strip.to_i

        case friend_mood_selection
        when 1
            selected_fortune = random_fortune(make_me_laugh)
            email(selected_fortune)
        when 2
            selected_fortune = random_fortune(pick_me_up)
            email(selected_fortune)
        when 3
            selected_fortune = random_fortune(dark_humour)
            email(selected_fortune)
        when 4
            selected_fortune = random_fortune(insightful)
            email(selected_fortune)
        else
        end

    end
end

def random_fortune array
    fortune = array.sample
    return fortune
end