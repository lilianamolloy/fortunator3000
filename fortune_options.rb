require "colorize"
require "terminal-table"
require_relative 'email'
require_relative "tweet"
require_relative "save_fortune"

def fortune_options fortune
    
    fortune_selection = 1
    
    while fortune_selection != 4

        puts "\u{1F960} \u{1F960} \u{1F960} \u{1F960}  #{fortune} \u{1F960} \u{1F960} \u{1F960} \u{1F960}".colorize(:green) 

        rows = [
            [1, 'Tweet it'.colorize(:blue)],
            [2, 'Email it to a friend'.colorize(:blue)],
            [3, 'Save it for later '.colorize(:blue)],
            [4, 'Back'.colorize(:blue)]
        ]

        table = Terminal::Table.new :title => "What would you like to do with your fortune? \u{1F960}".colorize(:blue), :rows => rows
        puts table 
        print "Select option: ".colorize(:blue) 

        fortune_selection = gets.strip.to_i

        case fortune_selection
        when 1
            tweet(fortune)
        when 2
            email(fortune)
        when 3
            save_fortune(fortune)
        end
    end

end
