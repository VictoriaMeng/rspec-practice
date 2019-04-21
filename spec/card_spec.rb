require_relative '../app/models/card'

RSpec.describe 'Card' do
  before(:context) do
    puts "Before context executes before running example group"
  end

  before(:example) do 
    puts "Before example executes once before each example"
  end

  after(:example) do 
    puts "After example executes once after each example"
  end

  after(:context) do
    puts "After context executes once after running example group"
  end

  let(:card) { Card.new('Ace', 'Spade') }

  it 'has a rank that can be changed' do 
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end 

  it 'has a suit' do 
    expect(card.suit).to eq('Spade')
  end

  # it 'has a custom error message' do 
  #   card.suit = 'Nonsense'
  #   comparison = 'Spades'
  #   expect(card.suit).to eq(comparison), "Expected #{comparison}, got #{card.suit} instead"
  # end
end
