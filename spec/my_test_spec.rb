require './lib/board'
require './lib/player'
require './lib/rules'

describe Player do
  player1 = Player.new(name = 'alex', marker = 'X')
  it "returns player name" do
    expect(player1.name).to eql('alex')
  end

  it "returns player marker" do
    expect(player1.marker).to eql('X')
  end
end