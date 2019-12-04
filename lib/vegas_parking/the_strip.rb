require 'pry'
class VegasParking::TheStrip
  
  attr_accessor :name, :url, :fee, :entrance, :description
  
 def self.places
 #This should scrape the parking website
  self.scrape_spots
  
 end
  
 def scrape_spots
   #This method should scrape URL
   #So that I can instantiate the parking spots
   
   spaces = []
   
   spaces << self.scrape_vegas
   
   spaces
   
  #place_1 = self.new
  #place_1.name = "Harrahs"
  #place_1.entrance = "Las Vegas Blvd"
  #place_1.url = "https://www.vegas.com/hotels/harrahs2/"
  #place_1.fee = "Free"
  #place_1.description = "Very large parking garage free only to guests"
  
  #place_2 = self.new
  #place_2.name = "Arizona Charlies"
  #place_2.entrance = "Boulder Hwy"
  #place_2.url = "https://www.vegas.com/resorts/arizonacharlieseast/"
  #place_2.fee = "Free"
  #place_2.description = "This garage has very tight turns as you go up the ramp. Be on the lookout for other drivers."
   # [place_1, place_2]
  end
  
  def self.scrape_vegas
    doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
    binding.pry
  end
  
  
end