require "colorize"
require 'terminal-table'
require "csv"
require_relative "mood_menu"
require_relative "friend_mood_menu"
require_relative "create_account"
require_relative "view_fortunes"

fortunes = CSV.read('fortunes.csv')

menu_selection = 1

while menu_selection != 4

    rows = [
        [1, 'A fortune cookie for you'.colorize(:blue)],
        [2, 'A fortune cookie for a friend'.colorize(:blue)],
        [3, 'Create user account'.colorize(:blue)],
        [4, 'View fortunes'.colorize(:blue)],
        [5, 'Exit'.colorize(:blue)]
    ]

    table = Terminal::Table.new :title => "\u{1F960}  MAIN MENU \u{1F960}".colorize(:blue), :rows => rows
    puts table
    print "Select option: ".colorize(:blue) 
   
   menu_selection = gets.strip.to_i

    case menu_selection
    when 1
        mood_menu(fortunes)
    when 2
        friend_mood_menu(fortunes)
    when 3
        create_account('')
    when 4
        view_fortunes
    else  
    end

end