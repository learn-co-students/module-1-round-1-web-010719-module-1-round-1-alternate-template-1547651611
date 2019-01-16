require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
puts "MAGAZINE RUN"

motortrend = Magazine.new("Motor Trend", "automotive")
gameinformer = Magazine.new("Game Informer", "Gaming")

jeffrey = Author.new("Geoff Knightley")
hammond = Author.new("Richard Hammond")

spiderman = Article.new(jeffrey, gameinformer)
porscheturboS = Article.new(hammond, motortrend)





### DO NOT REMOVE THIS
binding.pry

0
