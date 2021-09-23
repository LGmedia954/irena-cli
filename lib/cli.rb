module Irena

class CLI
   
    def call
        intro
        menu
        get_user_input
    end

    # I decided to eliminate Option 7 and its scrape and 
    # instead place the About paragraph below, so that I may 
    # unify the 6 Energy scrapes for the same CSS element.

    def intro
        puts "\n#######---Hello! My name is IRENA.---#######\n".colorize(:yellow)
        puts "IRENA stands for the International Renewable Energy Agency.\n".colorize(:yellow) 
        puts "I support world countries in their transition to a sustainable energy future.\n
        With nearly 200 countries actively engaged, I serve as the principal platform for\n 
        innovative cooperation, with a centre of excellence and a repository of policy,\n 
        technology, resources, and financial knowledge on renewable energy.\n\n

        I promote the widespread adoption and sustainable use of all forms of\n 
        renewable energy in the pursuit of sustainable development, energy access,\n 
        energy security, and low-carbon economic growth and prosperity.\n".colorize(:cyan)
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
                    #return

                when "2"
                    puts "GEOTHERMAL".colorize(:light_red)
                    #return
                    
                when "3"
                    puts "HYDROPOWER".colorize(:blue)
                    #return
                    
                when "4"
                    puts "OCEAN".colorize(:cyan)
                    #return
                    
                when "5"
                    puts "SOLAR".colorize(:light_yellow)
                    #return
                    
                when "6"
                    puts "WIND".colorize(:white)
                    #return
                    
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
        puts "\n Thank you for your interest in renewable energy!".colorize(:cyan)
    end
  
end

end