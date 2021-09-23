module Irena

class CLI
   
    def call
        intro
        menu
        get_user_input
    end

    # I decided to eliminate Option 7 and its scrape and 
    # place the About paragraph below instead, so that I may 
    # unify the Energy scrapes that use the same type of css element.

    def intro
        puts "#######---Hello! My name is IRENA.---#######".colorize(:yellow)
        puts"\n I support world countries in their transition to a sustainable energy future.\n\n

        IRENA stands for the International Renewable Energy Agency.\n
        With nearly 200 countries actively engaged, I promote renewable resources and technologies\n 
        as the key to a sustainable future and help countries achieve their renewable energy potential.\n\n
        
        I serve as the principal platform for international cooperation, a centre of excellence,\n 
        and a repository of policy, technology, resources, and financial knowledge on renewable energy.\n 
        I promote the widespread adoption and sustainable use of all forms of renewable energy\n 
        in the pursuit of sustainable development, energy access, energy security,\n 
        and low-carbon economic growth and prosperity.\n".colorize(:cyan)
    end
   
    def menu
        choices = [ "Bioenergy", "Geothermal", "Hydropower", "Ocean", "Solar", "Wind" ]
        choices.each.with_index(1) do |option, i|
          puts "#{i}. #{option}".colorize(:light_green)
        end
        puts "\n Please enter a number 1-6.\n To return to this menu at any time, type LIST.\n To exit the program, type EXIT."
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