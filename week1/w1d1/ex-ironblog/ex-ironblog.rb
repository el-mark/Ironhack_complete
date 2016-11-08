class Blog
  def initialize
    @posts = []
  end
  def add_post(post)
  	@posts<<post
  end
  def publish_front_page
  	counter = 1
  	@posts.sort { |x,y| y.date <=> x.date }.each do |post|
  		
  		puts "Post #{post.title}"
  		puts "**************"
  		puts "Post #{counter}: #{post.text}"
  		puts "----------------"
  		counter = counter + 1
  	end
  end
end

class Post
	attr_reader :title, :date, :text
	def initialize title, text
		@title = title
		@date = Time.now
		@text = text
	end

end

blog = Blog.new
blog.add_post(Post.new("First day", "This is fantastic"))
blog.add_post Post.new("Second day", "Its a lot of work")
blog.add_post Post.new("Third day", "Shure I can afford it")

blog.publish_front_page

