  require 'pry'
class VegasParking::Scraper
  
  attr_accessor :name, :details
  
  def self.names
    
            doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
      
                            spots = doc.css("p a").collect do |n|
                            name = n.text
                              VegasParking::TheStrip.new(name)
                            end
                         spots.delete_at(1)
                         spots.delete_at(4)
                         spots
                  
  end
  
  def self.detail
     doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
     
                            info = doc.css("p").collect {|i| i}
                            
                            #binding.pry
                            info.delete_at(0)
                            info.pop()
                            info
  end

def self.url
   doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
   
   link = doc.xpath('//p/a/@href')
  end
end