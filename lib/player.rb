class Player

  attr_reader :name
  attr_accessor :choice

  def initialize(name, choice = 'blank')
    @name = name
    @choice = choice
  end 

  def weapon(choice)
    @choice = choice
  end

end 