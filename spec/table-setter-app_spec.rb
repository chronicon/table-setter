require File.expand_path(File.dirname(__FILE__) + '/spec_helper')


describe TableSetter::App, "in the application" do
  include Rack::Test::Methods
  
  def app
    TableSetter::App
  end

  
  it "should render the homepage" do
    get '/'
    last_response.body.include?("All Tables").should be_true
  end
  
  

end