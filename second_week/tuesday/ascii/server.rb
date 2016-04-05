require "sinatra"
require "sinatra/reloader"
require "artii"
​
#iteration 1
​ get "/ascii/:word" do
 	w = params[:word]
 	a = Artii::Base.new :font => 'alligator'
 	@e = a.asciify(w)
 	erb(:word_ascii)
 end
​#iteration 2
get "/ascii/:word/?:font?/?:secret?" do
 	w = params[:word]
 	f = params[:font]
 	s = params[:secret]
 	a = Artii::Base.new :font => @f
 	@e = a.asciify(@w)
 	erb(:items)
 end


get "/ascii/:word/?:font?/?:secret?" do
	@w = params[:word]
	@f = params[:font]
	@s = params[:secret]

	if @w == "sloth" && @f == "special" && @s == "sleep"
		a = Artii::Base.new :font => 'alligator'
		@e = a.asciify(@w)
		erb(:secret)
	else
		a = Artii::Base.new :font => 'alligator'
		@e = a.asciify(@w)
		erb(:items)
	end
end
