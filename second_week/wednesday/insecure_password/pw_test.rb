require "rspec"
require "./passwordchecker"

describe PasswordChecker do
  before :each do
    @password_checker = PasswordChecker.new
  end

  pw = "1ronHack@gmail.com"

  describe "password_length" do
    it "must be longer than 7 chars" do
      expect(@password_checker.check_length(pw)).to eq(pw.length)
    end
  end


  describe "mix_values" do
    it "must containt letters numbers and shits" do
      expect(@password_checker.check_mixed_values(pw)).to eq(true)
    end
  end

  describe "name_domain" do
    it "must not includ user name or domain name in password" do
      expect(@password_checker.contains_name(pw)).to eq(false)
    end
  end


end
