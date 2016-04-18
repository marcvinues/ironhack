class TextInspectionsControllerController < ApplicationController
  def new
  end

  def create
    # redirect_to '/results'
  end
  def results
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    @wpm = @word_count.to_f / 275

    @word = @text.split(" ")
    @frequencies = Hash.new(0)

      @word.each { |w|
        if @frequencies.has_key?(w)
          @frequencies[w] = @frequencies[w] + 1
        else
          @frequencies[w] = 1
        end
        }

        @freq = @frequencies.sort{|a,b| b[1]<=>a[1]}
        

  end
end
