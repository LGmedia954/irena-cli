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
        puts "#{i}. #{option}".colorize(:green)
        end
        puts "\n Please enter a number 1-7.\n To return to this menu at any time, type LIST.\n"
    end
  
    def get_user_input
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            case input
            
                when "1"
                    #puts "Bioenergy"
                    Irena::Scraper.get_bioenergy
                    #Irena::Scraper.print_topics
                when "2"
                    puts "Geothermal"
                    #Irena::Scraper.get_geothermal
                when "3"
                    puts "Hydropower"
                    #Irena::Scraper.get_hydropower
                when "4"
                    puts "Ocean"
                    #Irena::Scraper.get_ocean
                when "5"
                    puts "Solar"
                    #Irena::Scraper.get_solar
                when "6"
                    puts "Wind"
                    #Irena::Scraper.get_wind
                when "7"
                    puts "About"
                    #Irena::Scraper.get_about
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