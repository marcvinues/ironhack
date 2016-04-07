class Blog
	attr_reader :posts

	def initialize
		@posts = []
	end

	def add_post(some_post)
		@posts.push(some_post)
	end

	def latest_posts
		@posts.sort { | post1, post2 | post2.date <=> post1.date }
	end

end

# blog = Blog.new
# post = Post.new("titlee", Time.new(2016,4,7), "this is content")
# blog.add_post(post)
