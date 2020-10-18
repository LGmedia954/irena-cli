module Irena

class CLI
   
    def call
        puts "#######---Hello! My name is IRENA.---#######".colorize(:yellow)
        puts"\n\n I promote renewable resources and technologies\n as the key to a sustainable future and\n help countries achieve their renewable energy potential.\n There are more than 180 countries actively engaged.\n\n".colorize(:cyan)
        menu
        get_user_input
        close
    end
   
    def menu
        choices = [ "Bioenergy", "Geothermal", "Hydropower", "Ocean", "Solar", "Wind", "About" ]
        choices.each.with_index(1) do |option, i|
        puts "#{i}. #{option}".colorize(:green)
        end
        puts "\n Please enter a number 1-7."
    end
  
    def get_user_input
        input = nil
        while input != "exit"
            input = gets.strip.downcase
            case input
            
                when [input.to_i] == 1
                    Irena::Scraper.new.get_bioenergy
                when [input.to_i] == 2
                    Irena::Scraper.new.get_geothermal
                when [input.to_i] == 3
                    Irena::Scraper.new.get_hydropower
                when [input.to_i] == 4
                    Irena::Scraper.new.get_ocean
                when [input.to_i] == 5
                    Irena::Scraperr.new.get_solar
                when [input.to_i] == 6
                    Irena::Scraper.new.get_wind
                when [input.to_i] == 7
                    Irena::Scraper.new.get_about
                when "exit"
                    close
            end
        end
    end

    def close
        puts "\n\n Thank you for your interest in renewable energy.\n It was delightful meeting you today.\n\n You can help by reaching out to\n public officials, stakeholders, and businesses\n about how renewable energy can help our communities\n to create more jobs, save money over time,\n and safeguard the environment.\n\n".colorize(:cyan)
    end
  
end

end