require "rspec"
require "./lexiconomitron"

describe Lexiconomitron do
  before :each do
    @doit = Lexiconomitron.new
  end

  describe "eat_t" do
    it "removes every letter t from the input" do
      expect(@doit.eat_t("great scott!")).to eq("grea sco!")
  end
end


  describe "eat_t" do
    it "removes every letter t from the input" do
      expect(@doit.eat_t_conc("great scott bolt!")).to eq("aerg !lob")
  end
end


  describe "oompa_loompa" do
    it "returns three characters or less" do
      expect(@doit.oompa_loompa("if you wanna be my lover")).to eq("if you be my")
    end
  end
end
