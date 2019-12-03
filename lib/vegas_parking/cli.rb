class VegasParking::CLI
  
  attr_accessor :places
  
  def call
    puts "Welcome to Vegas. How can I help you park today?"
 menu
 spots
  end
  
  def list_spots
    puts "Here is a list of all of the free parking spots at great locations!"
        @places = VegasParking::TheStrip.places
      # @places.each.with_index(1) do | place, i|        
      
  #end
end
  
  def spots
    puts "Please enter your spot selection. Type 'list' for a list of spots, 'any' for a random selection, or exit to end session."
    
      input = nil
     
    while input != "exit"
        input = gets.strip.downcase
     
           if input.to_i > 0
      #puts @places[input.to_i-1]
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
