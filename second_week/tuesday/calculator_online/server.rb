require "sinatra"
require "sinatra/reloader"

get "/" do
  @calc = ["+", "-"]
  erb(:add)
end

post "/calculate_add" do
  first = params[:first_number].to_f
   second = params[:second_number].to_f
   @result = params[:second_number]
   @calc = ['+','-']
   result = first + second
   "#{first} #{@calc} #{second} = #{result}"
end

post "/test" do
  "Params data: " + params.inspect
end
