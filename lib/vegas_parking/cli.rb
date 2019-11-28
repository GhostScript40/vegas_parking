class VegasParking::CLI
  
  def call
    puts "Welcome to Vegas. How can I help you park today?"
    list_spots
    spots
  end
  
  def list_spots
    puts "Here is a list of all of the free parking spots at great locations!"
  end
  
  def spots
    puts "Please enter your spot selection."
  end
end  
