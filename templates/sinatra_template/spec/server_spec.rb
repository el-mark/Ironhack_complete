require_relative "../server"
require "rspec"
require "rack/test"

describe "server Service" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end
