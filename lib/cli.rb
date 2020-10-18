module Irena

class CLI
   
    def call
        intro
        menu
        get_user_input
    end

    def intro
        puts "#######---Hello! My name is IRENA.---#######".colorize(:yellow)
        puts"\n I support countries in their transition to a sustainable energy future.\n\n".colorize(:cyan)
    end
   
    def menu
        choices = [ "Bioenergy", "Geothermal", "Hydropower", "Ocean", "Solar", "Wind", "About" ]
        choices.each.with_index(1) do |option, i|
        puts "#{i}. #{option}".colorize(:green)
        end
        puts "\n Please enter a number 1-7.\n To return to this menu at any time, type LIST.\n"
    end
  
    def get_user_input
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            case input
            
                when [input.to_i] == 1
                    puts "Bioenergy"
                    #Irena::Scraper.new.get_bioenergy
                when [input.to_i] == 2
                    puts "Geothermal"
                    #Irena::Scraper.new.get_geothermal
                when [input.to_i] == 3
                    puts "Hydropower"
                    #Irena::Scraper.new.get_hydropower
                when [input.to_i] == 4
                    puts "Ocean"
                    #Irena::Scraper.new.get_ocean
                when [input.to_i] == 5
                    puts "Solar"
                    #Irena::Scraperr.new.get_solar
                when [input.to_i] == 6
                    puts "Wind"
                    #Irena::Scraper.new.get_wind
                when [input.to_i] == 7
                    puts "About"
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
        puts "\n Thank you for your interest.\n It was delightful meeting you today!".colorize(:yellow)
    end
  
end

end