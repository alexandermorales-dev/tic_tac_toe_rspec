require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/rules'

describe 'Board' do
  describe '#check' do
    it "returns array with player's marker" do
      expect(Board.check([[1, 2, 3]], 2, 'X')).to eql [[1, 'X', 3]]
    end

    it "returns an array with player's marker and is not a falsey value" do
      expect(Board.check([[1, 2, 3]], 2, 'X')).not_to be_falsey
    end
  end
end

describe 'Player' do
  player1 = Player.new('alex', 'X')
  it 'returns player name' do
    expect(player1.name).to eql('alex')
  end

  it 'returns player marker' do
    expect(player1.marker).to eql('X')
  end

  it 'returns an array and not other object' do
    expect(player1).not_to be_a(String)
  end
end

describe 'PlayerT' do
  describe '#turn' do
    it 'returns player turn' do
      expect(PlayerT.turn(1, 'player 1 turn', 'player 2 turn')).to eql('player 1 turn')
    end
  end
end

describe 'Rules' do
  describe '#win' do
    array_winner = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    str1 = 'Player 1 wins'
    str2 = 'Player 2 wins'
    it "returns true if there's a winner" do
      expect(Rules.win([1, 2, 3], [4, 5, 8], array_winner, str1, str2)).to be true
    end

    it 'returns true when there is a winner' do
      expect(Rules.win([1, 2, 3], [4, 5, 8], array_winner, str1, str2)).not_to be false
    end
  end
end
