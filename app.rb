require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Gandalf")  
player2 = Player.new("Batman")

while player1.life_points > 0 && player2.life_points > 0 do #boucle jusqu'à ce que la mort les sépare

puts "Voici l'état de chaque joueur :"
  player1.show_state
  player2.show_state


puts "FIGHT !!!"

  player1.attacks(player2) # gandalf attaque batman
  if player2.life_points <= 0 
    break
  end
  player2.attacks(player1) # batman riposte 

end


binding.pry

=begin
ces lignes vont te permettre d'exécuter ton programme proprement depuis app.rb 
en rendant toutes les gems disponibles dans tous les fichiers 
(2 premières lignes) et en faisant appel aux 2 autres fichiers
 présents dans \lib (les 2 lignes suivantes).

La ligne binding.pry est là pour te permettre de faire des tests. 
Tout ce que tu vas coder dans player.rb, tu pourras le tester 
dans le terminal (avec PRY) en exécutant directement un petit ruby app.rb.
	
=end