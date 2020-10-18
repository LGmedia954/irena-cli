module Irena

class CLI  #CLI Controller
   
    def call
        puts "---Hello! My name is IRENA.---\n\n I promote renewable resources and technologies\n as the key to a sustainable future and\n help countries achieve their renewable energy potential.\n There are more than 180 countries actively engaged.\n\n"
        menu
        user_choices
    end
   
    def menu
        choices = [ "Bioenergy", "Geothermal", "Hydropower", "Ocean", "Solar", "Wind", "About" ]
        choices.each.with_index(1) do |option, i|
        puts "#{i}. #{option}"
        end  
    end
  
    def user_choices
        input = ""
        while input != "exit"
            puts "\n Please enter a number 1-7."
            input = gets.strip.downcase
            case input
            
                when [input.to_i-1] == 0
                    Scraper.new.get_bioenergy
                when [input.to_i-1] == 1
                    Scraper.new.get_geothermal
                when [input.to_i-1] == 2
                    Scraper.new.get_hydropower
                when [input.to_i-1] == 3
                    Scraper.new.get_ocean
                when [input.to_i-1] == 4
                    Scraper.new.get_solar
                when [input.to_i-1] == 5
                    Scraper.new.get_wind
                when [input.to_i-1] == 6
                    Scraper.new.get_about

                when "exit"
                    puts "Thank you for your interest in renewable energy.\n It was delightful meeting you today.\n\n You can help by reaching out to\n public officials, stakeholders, and businesses\n about how renewable energy can help our communities\n to create more jobs, save money over time,\n and safeguard the environment.\n\n"
                    break
                    
                else [input.to_i-1] != [0..6] || input != "exit"
                    puts "Invalid input. Please try again,\n or type EXIT to leave the program."  
                
            end
        end
    end
  
end

end