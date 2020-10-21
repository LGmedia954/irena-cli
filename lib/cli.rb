module Irena

class CLI
   
    def call
        intro
        menu
        get_user_input
    end

    def intro
        puts "#######---Hello! My name is IRENA.---#######".colorize(:yellow)
        puts"\n I support countries in their transition to a sustainable energy future.\n IRENA stands for the International Renewable Energy Agency.\n With more than 180 countries actively engaged, IRENA promotes\n renewable resources and technologies as the key to a sustainable future\n and helps countries achieve their renewable energy potential.\n".colorize(:cyan)
    end
   
    def menu
        choices = [ "Bioenergy", "Geothermal", "Hydropower", "Ocean", "Solar", "Wind", "About" ]
        choices.each.with_index(1) do |option, i|
        puts "#{i}. #{option}".colorize(:light_green)
        end
        puts "\n Please enter a number 1-7.\n To return to this menu at any time, type LIST.\n To exit the program, type EXIT."
    end
  
    def get_user_input
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            case input
            
                when "1"
                    puts "BIOENERGY".colorize(:green)

                when "2"
                    puts "GEOTHERMAL".colorize(:light_red)
                    
                when "3"
                    puts "HYDROPOWER".colorize(:blue)
                    
                when "4"
                    puts "OCEAN".colorize(:cyan)
                    
                when "5"
                    puts "SOLAR".colorize(:light_yellow)
                    
                when "6"
                    puts "WIND".colorize(:white)
                    
                when "7"
                    puts "ABOUT".colorize(:light_magenta)
                    
                when "list"
                    menu
                when "exit"
                    close
                else
                    puts "Invalid input. Please try again.".colorize(:red)
        
            end
        end
    end

    def close
        puts "\n Thank you for your interest in renewable energy.\n It was delightful meeting you today!".colorize(:cyan)
    end
  
end

end