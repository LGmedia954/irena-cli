module Irena

class EnergyScraper

  def initialize(url)
      # Using the energies data
      bio = Nokogiri::HTML(open("https://www.irena.org/bioenergy"))
      geo = Nokogiri::HTML(open("https://www.irena.org/geothermal"))
      hydro = Nokogiri::HTML(open("https://www.irena.org/hydropower"))
      seas = Nokogiri::HTML(open("https://www.irena.org/ocean"))
      sun = Nokogiri::HTML(open("https://www.irena.org/solar"))
      air = Nokogiri::HTML(open("https://www.irena.org/wind"))
      org = Nokogiri::HTML(open("https://www.irena.org/aboutirena"))
      energy = {}

      energy[:bioenergy] = bio.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      energy[:geothermal] = geo.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      energy[:hydropower] = hydro.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      energy[:ocean] = seas.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      energy[:solar] = sun.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      energy[:wind] = air.search("p.center-right-border").text.strip.gsub(/\s+/,' ')
      energy[:about] = org.search("span.center-right-border").text.strip.gsub(/\s+/,' ')

      energy
  end


    def self.print_renewables(input)
      case input
            
      when "1"
        return energy[:bioenergy]
      when "2"
        return energy[:geothermal]
      when "3"
        return energy[:hydropower]
      when "4"
        return energy[:ocean]
      when "5"
        return energy[:solar]
      when "6"
        return energy[:wind]
      when "7"
        return energy[:about]
      
      end
    end


end

end
