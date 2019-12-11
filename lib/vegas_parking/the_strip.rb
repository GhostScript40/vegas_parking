require 'pry'
class VegasParking::TheStrip
  
  attr_accessor :name, :url, :description
  
 #def self.places
 #This should scrape the parking website
 # self.scrape_spots
  
# end
  
 def scrape_spots
   #This method should scrape URL
   #So that I can instantiate the parking spots
   
   spaces = []
   
    spaces << self.scrape_vegas
      
      spaces
 end
  
  def self.scrape_vegas
    
  doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))

     names = doc.css('p').collect  {|name| name.css('a').text.strip} 
                                              ######################
     names.delete_at(0)                       # Scrapes the names  #
     names.pop()                              ###################### 
  
   
                                                                        ######################
      links = doc.xpath('//p/a/@href').collect { |l| l.text.strip }     #scrapes the links...#
                                                                        ######################        
      
      
      describe = doc.css('p').collect {|d| d.text} ################################
      describe.pop()                              #                               #
      describe.delete_at(0)                       # This scrapes the description  #
        binding.pry                               #                               #
                                                 ##################################    
      
  end
end