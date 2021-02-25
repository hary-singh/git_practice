require 'colorize'
def puts_gitinfo(cmd)
    puts `git #{cmd} -h`
    menu
end


def menu
    puts "Welcome!"
    puts "Main menu".colorize(:cyan)
    puts "1. Enter git command".colorize(:green)
    puts "2. Exit".colorize(:red)
    choice = gets.strip.to_i
    case choice
    when 1
        puts "Enter git command".colorize(:yellow)
        puts_gitinfo(gets.strip)

    when 2
        exit 
    else
        puts "Invalid, try something else".colorize(:red)
        menu
    end
end
menu