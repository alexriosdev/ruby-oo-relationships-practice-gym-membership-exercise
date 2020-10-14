class Gym

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def lifters
    memberships.map { |membership| membership.lifter }.uniq
  end

  def lifter_names
    lifters.map { |lifter| lifter.name }
  end

  def lift_total
    lifters.map { |lifter| lifter.lift_total }.sum
  end

  def self.all
    @@all
  end

  def self.all_lifts_sum
    self.all.map { |gym| gym.lift_total }.sum
  end

end