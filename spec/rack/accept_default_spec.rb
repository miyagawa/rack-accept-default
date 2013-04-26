require 'spec_helper'

describe Rack::AcceptDefault do
  include Rack::Test::Methods

  def app
    rack_app = lambda { |env| [200, {"Content-Type" => "text/plain"}, [ env["HTTP_ACCEPT"] ]] }
    Rack::AcceptDefault.new(rack_app)
  end

  it "should set */* as a default header" do
    get '/'
    last_response.should be_ok
    last_response.body.should == '*/*'
  end

  it "should override given nil Accept header" do
    get "/", {}, { "HTTP_ACCEPT" => nil }
    last_response.should be_ok
    last_response.body.should == "*/*"
  end

  it "should not override given Accept header" do
    get '/', {}, { 'HTTP_ACCEPT' => "application/json" }
    last_response.should be_ok
    last_response.body.should == 'application/json'
  end
end
