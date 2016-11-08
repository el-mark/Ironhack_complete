require 'sinatra'
#require 'sinatra/reloader'
require 'pry'
require 'imdb'

get "/" do
  erb(:input_word)
end
post "/input_word_form" do
  movie_search = Imdb::Search.new(params[:input_word])
  @movies = movie_search.movies[0..20]
  @poster_url = []
  @movies9 = []
  i = 0
  while @poster_url.length < 9 && i < 17
    unless @movies[i].poster == nil
      @poster_url << @movies[i].poster
      @movies9 << @movies[i].release_date
    end
    i = i + 1
  end
  @year = @movies9[rand(9)]
  erb(:show_posters)
end

# require_relative './models/blog.rb'
# require_relative './models/post.rb'
#
# post1 = Post.new("Hi",Time.new(2016,4,4),"How are yo doing?")
# post3 = Post.new("Lear something new",Time.new(2016,4,6),"I learned how to program on Ruby")
# post2 = Post.new("Hello again",Time.new(2016,4,5),"I'm raly enjoying the bootcamp")
#
# blog = Blog.new
# blog.add_post(post1)
# blog.add_post(post2)
# blog.add_post(post3)
#

# get "/posts" do
#   @blogpost = blog.latest_posts
#   erb(:posts)
# end
# get "/post_details/:index" do
#   @blogpost = blog.latest_posts
#   @index = params[:index].to_i
#   erb(:post_details)
# end
# get "/new_post" do
#   erb(:new_post)
# end
