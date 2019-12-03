class VegasParking::TheStrip
  
  attr_accessor :name, :location, :url
  
  def self.places
  #This should return a list of parking places
   place_1 = self.new
   place_1.name = "Arizona Charlies"
   place_1.location = "Boulder Hwy"
   place_1.url = "https://www.vegas.com/hotels/arizonacharlieseast/"
     end
end