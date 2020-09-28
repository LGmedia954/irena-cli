require 'pry'
require 'colorize'

class Irena::CLI  #CLI Controller
   
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
        puts Irena::Renewables.read
    end
  
end