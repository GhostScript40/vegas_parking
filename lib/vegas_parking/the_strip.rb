require 'pry'
class VegasParking::TheStrip
  
  attr_accessor :name, :url, :entrance, :description
  
 def self.places
 #This should scrape the parking website
  self.scrape_spots
  
 end
  
# def scrape_spots
   #This method should scrape URL
   #So that I can instantiate the parking spots
   
 #  spaces = []
   
  # spaces << self.scrape_vegas
   #   spaces
    #  binding.pry
  #end
  
  def self.scrape_vegas
     spots = []
  doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
     names = doc.css('p').collect do |name|
     name.css('a').text.strip
   end
  new_names = names.reject { |e| e.to_s.empty? }
   
     names.each do |name|
      name = self.new
       name.name = name
      end
      
      links = doc.css('p a').collect do |web_page|
     web_page.attribute('href').value
             binding.pry
      end
    end
  end