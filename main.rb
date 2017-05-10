require 'pry'
require './qNa'
require './player'
require './game'

# Set up the game
qNa = MathGame::QnA.new
player1 = MathGame::Player.new
player2 = MathGame::Player.new
game = MathGame::Game.new
qNa.generate_QnA

# Get players' name
print "Player 1: please enter your name - "
p1 = gets.chomp
player1.name = p1

print "Thanks #{player1.name}\n\n"
print "Player 2: please enter your name - "
p2 = gets.chomp
player2.name = p2
print "Thanks #{player2.name}\n\n"


# Start playing

print "===May the game begin===\n\n"
q = 0
loop do

# Player 1
  game.additive(player1, qNa, q)
  print "#{player1.name}: #{player1.score}/3 vs #{player2.name}: #{player2.score}/3\n\n"

    q += 1

  break if player1.score == 0 || player2.score == 0

# Player 2
  game.additive(player2, qNa, q)


  print "#{player1.name}: #{player1.score}/3 vs #{player2.name}: #{player2.score}/3\n\n"
    q += 1

  break if player1.score == 0 || player2.score == 0

  # Make more Q and A
  if q >= 9
    qNa.generate_QnA
    q = 0
  end

end

# Announce the winner
  player1.score == 0 ? winner = player2.name : winner = player1.name
  print "The winner is ... #{winner}!!\n"
