require './lib/board'
require './lib/player'
require './lib/rules'

describe Board do
  describe '#check' do
    it "returns array with player's marker" do
      expect(Board.check([[1, 2, 3]], 2, 'X')).to eql [[1, 'X', 3]]
    end
  end
end

describe Player do
  player1 = Player.new(name = 'alex', marker = 'X')
  it 'returns player name' do
    expect(player1.name).to eql('alex')
  end

  it 'returns player marker' do
    expect(player1.marker).to eql('X')
  end
end

describe PlayerT do
  describe '#turn' do
    it 'returns player turn' do
      expect(PlayerT.turn(1, 'player 1 turn', 'player 2 turn')).to eql('player 1 turn')
    end
  end
end

describe Rules do
  describe '#win' do
    array_winner = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    it "returns true if there's a winner" do
      expect(Rules.win([1, 2, 3], [4, 5, 8], array_winner, "Player 1 you Win the Game", 'Player 2 you win the game')).to be true
    end
  end
end