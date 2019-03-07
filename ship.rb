class Ship < Structure

  def post_initialize(args)
    @sprite = args.fetch[:sprite]
  end

  def draw
    # Draws the `sprite` at `location`
  end

end
