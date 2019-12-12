  require 'pry'
class VegasParking::Scraper
  
  attr_accessor :name, :url, :description
  
  def self.scrape_vegas
    
            doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
      
                              spots = {}
                              
            name = doc.css('p').collect  {|name| name.css('a').text.strip} 
                                                     ######################
            name.delete_at(0)                       # Scrapes the names  #
            name.pop()                              ###################### 
  name.each do |n| 
    n = self.new
    n.name = self  
  end
    
    
    
                                                                            ######################             
          url = doc.xpath('//p/a/@href').collect { |l| l.text.strip }       #scrapes the links...#
                                                                            ######################        
      url.each do |u| 
    u = self.new
    u.name = self  
  end
      
        description = doc.css('p').collect {|d| d.text} ################################
        description.pop()                               #                              #
        description.delete_at(0)                        # This scrapes the description #
                                                        ################################            
    description.each do |d| 
    d = self.new
    d.name = self  
  end                      



     spots = {:name => name, :url => url, :description => description}
     
     
                                                                        #####################
                                                                        #   Created Hash    #
                                                                        #####################
                                                                        
  end
  
  def self.places
    doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
    
    name = doc.css('p').collect  {|name| name.css('a').text.strip} 
                                                     
            name.delete_at(0)                       
            name.pop()     
            
            name
  end
  
  def self.website
  doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
  url = doc.xpath('//p/a/@href').collect { |l| l.text.strip }
  end
  
  def self.description
    doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
  description = doc.css('p').collect {|d| d.text} 
        description.pop()                             
        description.delete_at(0)  
  end
end