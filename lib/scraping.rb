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

    end