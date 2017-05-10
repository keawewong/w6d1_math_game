

module MathGame
  class Game


  def additive(player, qNa, q)
    print "#{player.name}: #{qNa.qNa[q][:q]} - "
    a = gets.chomp
    if a == qNa.qNa[q][:a]
      print "Correct. Your score is #{player.score}/3.\n\n"
    else
      player.score -= 1
      print "Nope. It is #{qNa.qNa[q][:a]}.\n\n"
    end
  end

end
end
