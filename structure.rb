class Structure

  DAMAGE = 1

  def initialize(args={})
    @location = args.fetch[:location]
    @hit_points = args.fetch[:hit_points]

    post_initialize(args)
  end

  def post_initialize
    nil
  end
  
  def hit?(attacker)
    # Returns true or false based on the simple linear distance
    # from `attacker.location` to `self.location`
  end

  def damage
    @hit_points -= DAMAGE
  end

  def destroyed?
    @hit_points <= 0
  end

end
