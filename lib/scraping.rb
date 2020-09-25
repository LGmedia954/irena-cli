require 'nokogiri'
require 'open-uri'

require_relative './selections.rb'

class Scraper  #Expect more refactoring here

    def get_bioenergy
      Nokogiri::HTML(open(""))
    end

    def get_geothermal
        Nokogiri::HTML(open(""))
    end

      def get_hydropower
        Nokogiri::HTML(open(""))
      end

      def get_ocean
        Nokogiri::HTML(open(""))
      end

      def get_solar
        Nokogiri::HTML(open(""))
      end

      def get_wind
        Nokogiri::HTML(open(""))
      end

      def get_aboutpage
        Nokogiri::HTML(open(""))
      end

      def get_topics
        doc.css(".post")
      end

      def make_topics
        self.get_topics.each do |post|
            energy = Renewables.new
            energy.title = post.css("h2").text
            energy.description = post.css("p").text
            end
        end

        def print_topics
            self.make_topics
            Renewables.all.each do |energy|
              if energy.title && energy.title != ""
                puts "#{energy.title}"
                puts "#{energy.description}"
              end
            end
          end

    end

    Scraper.new.print_topics