require 'pry'
class VegasParking::TheStrip
  
  attr_accessor :name, :url, :entrance, :description
  
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
 end
  
  def self.scrape_vegas
    
  doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
     names = doc.css('p').collect do |name|
     name.css('a').text.strip
   end
  new_names = names.reject { |e| e.to_s.empty? }
   
     new_names.each do |name|
      name = self.new
       name.name = name
      end
      
            links = doc.xpath('//p/a/@href').collect { |l| l.text.strip }
     
     #web_page.attribute('href').value
       #binding.pry
      #end
      
      describe = doc.css('p').collect {|d| d.text}
      describe.pop()
      describe.delete_at(0)
        binding.pry
        
       # describe.each do |d|
      #description = self.new
      #name.description = description
      #end
        
      new_names
end
end