# Initiates player with name and marker
class Player
  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end

# Checks player turn
module PlayerT
  def self.turn(init, str1, str2)
    if init.odd?
      str1
    else
      str2
    end
  end
end
