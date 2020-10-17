module Irena

class CLI  #CLI Controller
   
    def call
        puts "Hello! My name is IRENA.\n I promote renewable resources and technologies\n as the key to a sustainable future and\n help countries achieve their renewable energy potential.\n There are more than 180 countries actively engaged.\n\n"
        list_choices
        menu
        close
    end
   
    def list_choices
        @energies = Irena::Renewables.available
        @energies.each.with_index(1) do |option, i|
        puts "#{i}. #{option}"
        end
    end
  
    def menu
        input = nil
        while input != "exit"
        puts "Please enter a number 1-7 to learn more,\n or type EXIT to leave the program.\n\n"
        input = gets.strip.downcase
        
        if input.to_i <= 7 && input.to_i > 0
            case input
                when [input.to_i-1] == 0
                    Scraper.get_bioenergy
                when [input.to_i-1] == 1
                    Scraper.get_geothermal
                when [input.to_i-1] == 2
                    Scraper.get_hydropower
                when [input.to_i-1] == 3
                    Scraper.get_ocean
                when [input.to_i-1] == 4
                    Scraper.get_solar
                when [input.to_i-1] == 5
                    Scraper.get_wind
                when [input.to_i-1] == 6
                    Scraper.get_about

                Scraper.print_topics
            end

        elsif input == "exit"
        close
        else
        puts "Invalid entry. Please try again."
        end
    end
  
  
    def close
        puts "Thank you for your interest in renewable energy.\n It was delightful meeting you today.\n\n You can help by reaching out to\n public officials, stakeholders, and businesses\n about how renewable energy can help our communities\n to create more jobs, save money over time,\n and safeguard the environment.\n\n"
        puts @energies.read
    end
  
    end
end

end