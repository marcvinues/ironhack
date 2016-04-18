class AsciisController < ApplicationController
  def new

  end
  def results

    @text = params[:text_inspection][:user_text]
    @a = Artii::Base.new :font => 'slant'

  end
end
