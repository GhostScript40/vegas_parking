 require 'pry'
class VegasParking::Scraper
  
          attr_accessor :name, :url, :description
  
  def self.scrape_vegas
    
            doc = Nokogiri::HTML(open("https://www.vegas.com/transportation/free-parking-las-vegas/"))
      
                              spots = []
        
            name = doc.css('p').collect  {|name| name.css('a').text.strip} 
                                                     ######################
            name.delete_at(0)                       # Scrapes the names  #
            name.pop()                              ###################### 
  
                                                                            ######################
          url = doc.xpath('//p/a/@href').collect { |l| l.text.strip }     #scrapes the links...#
                                                                            ######################        
      
      
        description = doc.css('p').collect {|d| d.text} ################################
        description.pop()                              #                               #
        description.delete_at(0)                       # This scrapes the description  #
                                                    #                               #
                                                   ##################################    
     spots << name
     spots << url
     spots << description
     VegasParking::TheStrip.new(name, url, description)
      spots
  end
end