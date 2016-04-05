require "rspec"
require "./todolist"
#creating TDD

#initialize our testing
describe Task do
  before :each do
    @p = Task.new("New thing")
  end

  describe "completed" do
    it "If the tasks is false when it was created" do
      expect(@p.completed?(false)).to eq(false)
    end
  end

  describe "completed true" do
    it "If the tasks is false when it was created" do
      expect(@p.completed?(true)).to eq(false)
    end
  end

end
