module Irena

class CLI     # Menu actions

    attr_accessor :input
   
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
        puts "     I support world countries in their transition to a sustainable energy future.
        With nearly 200 countries actively engaged, I serve as the principal platform for
        innovative cooperation, with a centre of excellence and a repository of policy,
        technology, resources, and financial knowledge on renewable energy.\n

        I promote the widespread adoption and sustainable use of all forms of
        renewable energy in the pursuit of sustainable development, energy access,
        energy security, and low-carbon economic growth and prosperity.\n".colorize(:cyan)
    end
   
    def menu
        choices = [ "Bioenergy", "Geothermal", "Hydropower", "Ocean", "Solar", "Wind" ]
        choices.each.with_index(1) do |option, i|
          puts "#{i}. #{option}".colorize(:light_green)
        end
        puts "\n Please enter a number 1-#{ENERGY_TYPES.length}.\n To return to this menu at any time, type LIST.\n To exit the program, type EXIT.\n"
    end
  
    def get_user_input
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            process_input
            case input
            
                when "1"
                    puts "BIOENERGY".colorize(:green)
                    print_description

                when "2"
                    puts "GEOTHERMAL".colorize(:light_red)
                    print_description
                    
                when "3"
                    puts "HYDROPOWER".colorize(:blue)
                    print_description
                    
                when "4"
                    puts "OCEAN".colorize(:cyan)
                    print_description
                    
                when "5"
                    puts "SOLAR".colorize(:light_yellow)
                    print_description
                    
                when "6"
                    puts "WIND".colorize(:white)
                    print_description
                    
                when "list"
                    menu
                when "exit"
                    close
                else
                    puts "Invalid input. Please try again.".colorize(:red)
        
            end
        end
    end

    def process_input
        @input = gets.strip.downcase
        idx = @input.to_i - 1
        valid = (0...ENERGY_TYPES.length).to_a.include?(@input.to_i - 1)
    end

    def print_description
        puts ""
        puts "#{@description}".colorize(:light_white)
        puts "=" * 50
    end

    def close
        puts "\n Thank you for your interest in renewable energy!".colorize(:cyan)
        puts ""
    end
  
end

end