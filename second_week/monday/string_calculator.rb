# class StringCalculator
#   def add(string_to_add)
#     total = 0
#     string_to_add.to_s.split(",").each do |single_number|
#       total += single_number.to_i
#     end
#       total
#   end
#   # RSpec.descibre "String calculator" do
#   #   it "returns 0 for the empty string" do
#   #     expect(StringCalculator.new.add("")).to eq(0)
#   #   end
#   # end
# end
#
#
# puts StringCalculator.new.add(2)
# puts StringCalculator.new.add("3,2,2")
# using TDD
class StringCalculator
  def add(string_to_add)
    total = 0
    string_to_add.to_s.split(",").each do |single_number|
      total += single_number.to_i
    end
    total
  end
end
