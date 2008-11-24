require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/posties/show" do
  before(:each) do
    render 'posties/show'
  end
  
  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/posties/show])
  end
end
