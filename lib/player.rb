require "pry"

class Player
  attr_accessor :name, :life_points #10points pour tout le M 
#  @@all_users = []
  

def initialize(name)
	@name = name 
	@life_points = 10
#    @@all_users << self 

 end

 def show_state
	puts "#{self.name} a #{self.life_points} points de vie"
end

def gets_damage(damage_received)
	@life_points = @life_points - damage_received 
	if @life_points <= 0
	puts "le player #{@name} a été kill"
end
end

def attacks (player)
    puts "#{@name} attaque #{player.name}"
    number = compute_damage
    puts "Ce player inflige à l'autre #{number} points de dommage, dezo"
    player.gets_damage(number)
end

def compute_damage
    return rand(1..6)
  end


end

binding.pry
 






=begin 


    2 joueurs ;
    Que chaque joueur ait un niveau de vie donné ;
    Que ce niveau de vie baisse à chaque attaque subie ;
    Si la vie atteint zéro, le personnage est mort.

#def self.all_users
#	@@all_users



=end 
