module Irena

class CLI     # Menu actions

    attr_accessor :input
   
    def call
        Irena::EnergyScraper.get_energies
        intro
        menu
        get_user_input
    end

    # I decided to eliminate Option 7 and its scrape and 
    # instead place the About paragraph below, so that I may 
    # unify the 6 Energy scrapes for the same CSS element.

    def intro
        puts "\n#######---Hello! My name is IRENA.---#######\n".colorize(:yellow)
        puts "IRENA stands for the International Renewable Energy Agency.\n" 
        puts "\n        I support world countries in their transition to a sustainable energy future.
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
          puts "#{i}. #{option}"
        end
        puts "\n Please enter a number 1-#{Irena::EnergyScraper::ENERGY_TYPES.length}.
        \n To return to this menu at any time, type LIST.\n To exit the program, type EXIT.\n"
    end
  
    def get_user_input
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            process_input
            case input
            
                when "1"
                    puts Irena::Energy.all[0].name.upcase
                    puts Irena::Energy.all[0].description.colorize(:green)

                when "2"
                    puts Irena::EnergyScraper::ENERGY_TYPES[1].colorize(:light_red) 
                    
                when "3"
                    puts Irena::EnergyScraper::ENERGY_TYPES[2].colorize(:blue)      
                    
                when "4"
                    puts Irena::EnergyScraper::ENERGY_TYPES[3].colorize(:cyan)   
                    
                when "5"
                    puts Irena::EnergyScraper::ENERGY_TYPES[4].colorize(:yellow)    
                    
                when "6"
                    puts Irena::EnergyScraper::ENERGY_TYPES[5].colorize(:light_white)
                    
                    
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
        valid = (0...Irena::EnergyScraper::ENERGY_TYPES.length).to_a.include?(@input.to_i - 1)
    end

    def close
        puts "\n Thank you for your interest in renewable energy!".colorize(:cyan)
        puts ""
    end
  
end

end
