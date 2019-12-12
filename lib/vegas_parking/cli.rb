require 'pry'

class VegasParking::CLI
  
  attr_accessor :name, :url, :description
  
  def call
    puts "Welcome to Vegas. How can I help you park today?"
    list_spots
  end
  
  def get_list
      puts "Here is a list of all of the free parking spots at great locations!"
      puts VegasParking::Scraper.places
      @spots = VegasParking::Scraper.places
     # binding.pry
end
  
  def list_spots
    puts "Please enter your spot selection. Type 'list' for a list of spots, 'any' for a random selection, or exit to end session."
     @spots.each.with_index(1) do | place, i|  
         puts "#{i} #{place.name}"
    end
   end
   
   def select_spot
    
     input = nil
     
    while input != "exit"
        input = gets.strip.downcase
     
           if input.to_i > 0
      parking_spot = @spots[input.to_i-1]
        puts "#{parking_spot.name} - #{parking_spot.description}"
      elsif input == "list"
        list_spots
        elsif input == "any"
          any_spot
        elsif input == "menu"
          menu
          elsif input == "exit"
          goodbye
        else
          puts "Your selection was not valid please choose one of the following selections from the menu:"
          menu
      end
    end
  end
  
  def any_spot
    puts "Heres a nice one you may like! Check it out.."
     @Spots.sample
  end
  
  def menu
    puts "1. List Spots"
    puts "2. Random Spot"
    puts "3. Exit"
  end
  
  def goodbye
    puts "Thanks for stopping by :) . See ya next Time!."
  end
end  
