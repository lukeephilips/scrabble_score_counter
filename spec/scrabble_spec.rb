require('rspec')
require('pry')
require('scrabble.rb')

describe('String#scrabble') do
  # it("limits acceptable input to letters only") do
  #   expect("a$2b".scrabble()).to(eq("ab"))
  # end
  # it("returns the downcase version of all letters in submission") do
  #   expect("A".scrabble()).to(eq("a"))
  # end
  it("returns a scrabble score value for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns a scrabble score for any letter key connected to that same number value") do
    expect("e".scrabble()).to(eq(1))
  end
  it("returns a scrabble score for multiple letters of the same number value") do
    expect("aei".scrabble()).to(eq(3))
  end
  it("returns a different scrabble score value for a new letter") do
    expect("d".scrabble()).to(eq(2))
  end
  it("returns the same diff scrabble score for any letter key connected to that same number value") do
    expect("g".scrabble()).to(eq(2))
  end
  it("returns the same diff scrabble score for multiple letters of the same number value") do
    expect("dg".scrabble()).to(eq(4))
  end
  it("returns the scrabble score value for multiple letters of varying number values") do
    expect("Quiz22".scrabble()).to(eq(22))
  end
end
