require 'rspec'
require_relative '../models/blog.rb'
require_relative '../models/post.rb'

RSpec.describe Blog do

before :each do
  @blog = Blog.new
  post = Post.new("titlee", Time.new(2016,4,5), "this is content 1")
  post2 = Post.new("titlee 2", Time.new(2016,4,6), "this is content 2")
end

  it "#latest_post return an array of posts" do
    expect(@blog.posts).to eq( [] )
  end
  

end
