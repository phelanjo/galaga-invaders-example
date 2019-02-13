# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  SHIP_WIDTH = 100
  SHIP_HEIGHT = 200

  Struct.new("Missile", :missile_coordinates)

  attr_accessor: :x, :y

  def initialize(x, y)
    @x = x
    @y = y
    @missile_coordinates = []
  end

  def move_left
    x -= 5
  end

  def move_right
    x += 5
  end

  def fire_missile
    @missile_coordinates << [@x, @y - SHIP_HEIGHT / 2]
  end

  def move_missiles
    @missile_coordinates.each do |missile|
      missile[1] -= 10
    end
  end

  def draw
    # Ignore this
  end

  def draw_missiles
    @missile_coordinates.each do |missile|

    end
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
    Modularity between classes and methods.
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
    Single responsibility, Open-closed, Liskov Substitution, Interface Segregation,
    Dependency Inversion.
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
    True in a sense, but you should not make huge designs. Design enough that you have a product to bring
    to your customers that can be tested and iterated upon.
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
    Exemplary. Your code should set an example for other programmers that read and use your code.
5. How does applying SRP naturally lead to good design?
    It exposes previously hidden qualities, avoids the need for comments, encourages reuse,
    and it makes it easy to move to another class.
=end
