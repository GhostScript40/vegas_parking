  require 'pry'
class VegasParking::Scraper
  
  attr_accessor :name
  
  def self.names
    
            doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
      
                            spots = doc.css("p a").collect do |n|
                            name = n.text
                              VegasParking::TheStrip.new(name)
                            end
                         spots.delete_at(1)
                         spots.delete_at(4)
                         spots.delete_at(2)
                         spots.delete_at(1)
                         spots
                  
  end
  
  def self.detail
     doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
     
                            info = doc.css("p").collect {|i| i}
                            info.delete_at(0)
                            info.pop()
                            info.delete_at(1)
                            info
  end

def self.url
   doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
   
   link = doc.xpath('//p/a/@href').collect {|l| l}
   link.delete_at(1)
   link.delete_at(1)
   link
  end
end