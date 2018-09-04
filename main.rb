require_relative "mood_menu"

fortunes = { 
    make_me_laugh: ["About time I got out of that loop.", "Ignore all previous fortunes.", "Your fortune resides in another cookie.", "Some men dream of fortunes, others dream of cookies.", "You will be hungry again in one hour.", "I cannot help you, for I am just a cookie.", "If you can read this, you are literate, congrats.", "Oops, wrong cookie.", "Your friends secretly agree that your head is too small for your body.", "Don't fry bacon in the nude.", "Marriage lets you annoy one special person for the rest of your life.", "Life will be happy, until the end when you'll pee yourself a lot.", "When chosen for jury duty, tell the judge about this fortune.",  "You are cleverly disguised as a responsible adult.", "Drive like hell and you will get there.", "Give person fish, he eat for a day. Teach person to fish, he smell funny always.", "Look before you leap. Or wear a parachute.", "Made in the USA.", "Don't trust your cat.", "today i will be as useless as the G in lasagne", "A successful man is one who makes more money than his wife can spend. A successful woman is one who can find such a man.", "I never forget a face, but in your case I’ll be glad to make an exception.", "If you fall, I'll be there -Ground-" ],
    pick_me_up: ["Someone is looking up to you, don't let them down.", "If you eat somthing and nobody sees you eat it, it has no calories.", "Hearty laughter is a good way to jog internally without having to go outdoors.", "A thrilling time is in your immediate future.", "Someone has Googled you recently.", "A man with brown eyes has a surprise for you.", "You are not illiterate.", "An alien of some sort will be appearing to you shortly!", "A lucrative career change awaits. Have you considered gangsta rap?", "Aim for the moon. If you miss you may hit a star", "Don't watch the clock; do what it does. Keep going", "Have a break, haver a Kit Kat", "Coffee time!" ],
    dark_humor: ["Run!!!", "Go to bed with itchy bum, wake up with smelly finger.", "A tub and a rub will change your day", "That wasn't chicken.", "Help, I am being held prisoner in a Chinese bakery.", "You will regret your decision for dinner tonight.", "Meh.", "Wouldn't it be ironic to die in a living room.", "I know where you live.", "I know what you are doing right now", "Don't panic.", "You will soon have an out of money exprience.", "Don't be a dick.", "Ask your mom.", "Some people eat their feelings. Mine taste too bitter", "Mirrors don't lie and lucky for you they don't laugh", "If rabbits feet is so lucky, what happened to the rabbit?", "Drunk people, children and leggings always tell the truth"],
    insightful: ["No snowflake in an avalance ever feels responsible.", "You learn from your mistakes... You will learn a lot today", "Do not mistake temptation for opportunity.", "Never wear your best pants when you go to fight for freedom.", "Accept that some days you're the pigeon and some days you're the statue.", "When everything's coming your way, you're probably in the wrong lane.", "Some fortune cookies contain no fortune.", "He who laughs lasts is laughing at you.", "It could be better, but it's good enough.", "You will find a thing and it will be important.", "Two days from now, tomorrow will be yesterday.", "He who dies with most money, still dies.", "Two can live as cheaply as one, for half as long.", "Stop procrastinating...starting tomorrow", "Honesty is the key to a relationship. If you can fake that, you’re in."]
}

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
        mood_menu fortunes
    when 2
        puts 'two'
    when 3
        puts 'three'
    else 
    end

end