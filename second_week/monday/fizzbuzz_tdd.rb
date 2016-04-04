require "rspec"
require "./fizzbuzz"

RSpec.describe "Answer" do
  let(:resp) { FizzBuzz.new }

  it "Should be multiple of 3" do
    expect(resp.answer(3)).to eq("Fizz")
  end

  it "should be multiple of 5" do
    expect(resp.answer(5)).to eq("Buzz")
  end

  it "if its multiple of 3 and 5" do
    expect(resp.answer(15)).to eq("FizzBuzz")
  end
end
