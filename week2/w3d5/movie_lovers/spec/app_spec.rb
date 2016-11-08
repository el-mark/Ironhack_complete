require_relative "../app"
require "rspec"
require "rack/test"

describe "server Service" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "should load the /input_word page" do
    get '/input_word'
    expect(last_response).to be_ok
  end
  # it "should load the /show_posters page" do
  #   get '/show_posters'
  #   expect(last_response).to be_ok
  # end
  # it "should not load the home page" do
  #   get '/home'
  #   expect(last_response).to_not be_ok
  # end
  # it "should load the other page" do
  #   get '/real_page'
  #   expect(last_response).to be_ok
  # end
  # it " hi page should redirect to the real page" do
  #   get '/hi'
  #   expect(last_response.redirect?).to be(true)
  #   follow_redirect!
  #   expect(last_request.path).to eq('/real_page')
  # end

end
