require 'pry'
require 'ruby-dictionary'

class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
        @first_word = []
        @end_word = []
    end
    def form_array
        @first_end_array = [@first_word, @end_word]
        #puts "#{@first_end_array}"
        find_chain
    end

def find_chain
  
  if @first_word[0] != @end_word[0]
     @first_word[0] = @end_word[0]
     puts @first_word.join
     

  else
    puts "it's not the same!"
  end

end

# #     def find_chain
# #           @first_word.zip (@end_word).each_char do |first, endw|
# #
# # if first != endw
# #   first = endw
# # end
# # puts first
#
#
#
#             # if first.chr != endw.chr
#             # new_word = first.chr.replace endw.chr
#           # puts new_word
#
#           end
# puts new_word
#       end
#       binding.pry
#     end
    def get_input
      puts "Give me the first word"
      @first_word = gets.chomp.split("")
      puts "Give me the end word"
      @end_word = gets.chomp.split("")
      # puts @first_word
      # puts @end_word
      find_chain
    end
end
dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)
my_chain.get_input
#puts dictionary.exists?('bees')