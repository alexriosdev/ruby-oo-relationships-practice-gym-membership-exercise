# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Arnold", 200)
l2 = Lifter.new("Sylvester", 400)

g1 = Gym.new("Gold's Gym")
g2 = Gym.new("Tru Fit")

m1 = Membership.new(l1, g1, 10)
m2 = Membership.new(l2, g1, 20)
m2 = Membership.new(l1, g2, 20)

binding.pry

puts "Gains!"