require './lib/board'
require './lib/player'
require './lib/rules'

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