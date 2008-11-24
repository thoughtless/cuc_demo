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

  describe "POST 'create'" do
    before :each do
      @params = {:foo => 'bar'}
    end
    
    describe "with valid attributes" do
      it "should redirect to the show pastie page" do
        postie = mock_model(Postie, :save => true)
        Postie.should_receive(:new).and_return(postie)
        post 'create', :postie => @params
        response.should redirect_to(postie_path(postie))
      end
    end
  end

  describe "GET 'show'" do
    before(:each) do
      @postie = mock_model(Postie)
      Postie.stub!(:find).and_return(@postie)
    end
    
    it "should be successful" do
      get 'show', :id => @postie.id
      response.should be_success
    end
    it "should assign a the postie to the view" do
      get 'show', :id => @postie.id
      assigns[:postie].should == @postie
    end
  end
end
