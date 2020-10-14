class Lifter

  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total.to_f
    self.class.all << self
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    memberships.map { |membership| membership.gym }.uniq
  end

  def total_cost
    memberships.map { |membership| membership.cost }.sum
  end

  def sign_agreement(gym, cost)
    Membership.new(self, gym, cost)
  end

  def self.all
    @@all
  end

  def self.all_lifts
    self.all.map { |lifter| lifter.lift_total }
  end

  def self.average_lift_total
    all_lifts.sum / all_lifts.size
  end

end