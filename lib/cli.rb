module Irena

class CLI  #CLI Controller
   
    def call
        puts "Hello! My name is IRENA. I promote renewable resources and technologies as the key to a sustainable future and help countries achieve their renewable energy potential. There are more than 180 countries actively engaged.\n\n"
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
        puts "Please enter a number 1-7 to learn more, or type EXIT to leave the program.\n\n"
        input = gets.strip.downcase

        if input.to_i <= 7 && input.to_i > 0

            def print_topics  
                self.find_topics
                @energies.one? |item|
                case input
                  when @energies[input.to_i-1] == 0
                    get_bioenergy
                  when @energies[input.to_i-1] == 1
                    get_geothermal
                  when @energies[input.to_i-1] == 2
                    get_hydropower
                  when @energies[input.to_i-1] == 3
                    get_ocean
                  when @energies[input.to_i-1] == 4
                    get_solar
                  when @energies[input.to_i-1] == 5
                    get_wind
                  when @energies[input.to_i-1] == 6
                    get_about
                end





        puts @energies[input.to_i-1]
        elsif input == "exit"
        close
        else
        puts "Invalid entry. Please try again."
        end
        end
    end
  
  
    def close
        puts "Thank you for your interest in renewable energy. It was delightful meeting you today.\n\n You can help by reaching out to public officials, stakeholders, and businesses about how renewable energy can help our communities to create more jobs, save money over time, and safeguard the environment.\n\n"
        puts @energies.read
    end
  
end
end