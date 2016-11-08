require 'rspec'
require_relative '../models/blog.rb'
require_relative '../models/post.rb'

RSpec.describe Blog do

  before :each do
    @blog = Blog.new
    post1 = Post.new("Hi",Time.new(2016,4,4),"How are yo doing?")
    post2 = Post.new("Hello again",Time.new(2016,4,5),"I'm raly enjoying the bootcamp")
    post3 = Post.new("Lear something new",Time.new(2016,4,6),"I learned how to program on Ruby")
  end

  it "#latest_post returns an array of post" do
    expect(@blog.posts).to eq([])
  end

end
