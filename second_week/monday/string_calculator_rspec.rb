require "rspec"
require "./string_calculator"
#example using TDD
RSpec.describe "add method" do

  # before :each do
  #   @calc = StringCalculator.new
  # end

  let(:calc) {StringCalculator.new}

  it "should return 0 for an empty string" do
    expect(calc.add("")).to eq(0)
  end

  it "should return 2 when only that number" do
    expect(calc.add(2)).to eq(2)
  end

  it "should return Fixnum when string it passed" do
    expect(calc.add(3)).to be_a_kind_of(Fixnum)
  end

  it "should return 10 when passing 4,1 and 5" do
    input ="4, 1, 5"
    expect(calc.add(input)).to eq(10)
  end



  # it "should return 0 for an empty string" do
  #   expect(@calc.add("")).to eq(0)
  # end
  #
  # it "should return 2 when only that number" do
  #   expect(@calc.add(2)).to eq(2)
  # end
  #
  # it "should return Fixnum when string it passed" do
  #   expect(@calc.add(3)).to be_a_kind_of(Fixnum)
  # end
  #
  # it "should return 10 when passing 4,1 and 5" do
  #   input ="4, 1, 5"
  #   expect(@calc.add(input)).to eq(10)
  # end
end
