require "sinatra"
require "sinatra/reloader"
require_relative "models/blog.rb"
require_relative "models/post.rb"
require "pry"

#adding new posts to our blog

post = Post.new("Title", Time.new(2016,4,5), "New cool Content", "Pedro", "Sport")
post2 = Post.new("New Post", Time.new(2016,4,6), "More new cool Content", "Jaine", "Music")
post3 = Post.new("BOOO", Time.new(2016,4,7), "this is content 3", "Lola", "Decoration")

blog = Blog.new
blog.add_post(post)
blog.add_post(post2)
blog.add_post(post3)

get '/' do
  # blog.latest_posts
  @posts = blog.latest_posts
  erb(:home)
end
#binding.pry
get '/post_details/:index' do
  i = params[:index].to_i
  @post = blog.latest_posts[i]
  erb(:post_details)
end

get '/new_post' do
  erb(:newpost)
end

post "/test" do
  # "Params data: " + params.inspect
  title = params[:title]
  date_input = params[:date]
  textarea = params[:textarea]
  author = params[:author]
  category = params[:category]

  postnew = Post.new(title,Time.new,textarea,author, category)
  blog.add_post(postnew)
  redirect '/'

end
