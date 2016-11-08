require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative './models/blog.rb'
require_relative './models/post.rb'

#Our fake database
post1 = Post.new("Hi",Time.new(2016,4,4),"How are yo doing?")
post3 = Post.new("Lear something new",Time.new(2016,4,6),"I learned how to program on Ruby")
post2 = Post.new("Hello again",Time.new(2016,4,5),"I'm raly enjoying the bootcamp")

blog = Blog.new
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
#end of fake database

get "/" do
  "home"
  redirect '/posts'
end
get "/posts" do
  @blogpost = blog.latest_posts
  erb(:posts)
end
get "/post_details/:index" do
  @blogpost = blog.latest_posts
  @index = params[:index].to_i
  erb(:post_details)
end
get "/new_post" do
  erb(:new_post)
end
post "/new_post_form" do
  post = Post.new(params[:title],Time.now,params[:content])
  blog.add_post(post)
  redirect '/posts'
end
