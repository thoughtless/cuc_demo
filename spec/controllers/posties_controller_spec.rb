require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PostiesController do

  #Delete these examples and add some real ones
  it "should use PostiesController" do
    controller.should be_an_instance_of(PostiesController)
  end


  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    it "should assign a new postie to the view" do
      postie = Postie.new
      Postie.stub!(:new).and_return(postie)
      get 'new'
      assigns[:postie].should == postie
    end
  end

  describe "GET 'create'" do
    it "should be successful" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end
end
