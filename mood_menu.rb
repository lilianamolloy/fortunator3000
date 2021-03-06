require "colorize"
require "terminal-table"
require_relative "fortune_options"

def mood_menu fortunes

    make_me_laugh = fortunes[0]
    pick_me_up = fortunes[1]
    dark_humour = fortunes[2]
    insightful = fortunes[3]

    mood_selection = 1

    while mood_selection != 5

    rows = [
        [1, 'Make me laugh'.colorize(:blue)],
        [2, 'Pick me up'.colorize(:blue)],
        [3, 'Dark humour'.colorize(:blue)],
        [4, 'Insightful'.colorize(:blue)],
        [5, 'Return to main menu'.colorize(:blue)]
    ]

    table = Terminal::Table.new :title => "\u{1F960}  SELECT YOUR MOOD \u{1F960}".colorize(:blue), :rows => rows
    puts table 
    print "Select option: ".colorize(:blue) 
   
    mood_selection = gets.strip.to_i

        case mood_selection
        when 1
            selected_fortune = random_fortune(make_me_laugh)
            fortune_options(selected_fortune)
        when 2
            selected_fortune = random_fortune(pick_me_up)
            fortune_options(selected_fortune)
        when 3
            selected_fortune = random_fortune(dark_humour)
            fortune_options(selected_fortune)
        when 4
            selected_fortune = random_fortune(insightful)
            fortune_options(selected_fortune)
        else
        end

    end
end

def random_fortune array
    fortune = array.sample
    return fortune
end

