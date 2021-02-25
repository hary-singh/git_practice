def puts_gitinfo(cmd)
    puts `git #{cmd} -h`
    menu
end


def menu

    puts "1. Enter git command"
    puts "2. Exit"
    choice = gets.strip.to_i
    case choice
    when 1
        puts "Enter git command"
        puts_gitinfo(gets.strip)

    when 2
        exit 
    else
        puts "Invalid, try something else"
        menu
    end
end
menu