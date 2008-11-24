require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PostiesController do

  describe "route generations" do
    
    it "should map #new" do
      route_for(:controller => "posties", :action => "new").should == "/"
    end
    
    it "should map #create" do
      route_for(:controller => "posties", :action => "create").should == "/"
    end
    
    it "should map #show" do
      route_for(:controller => "posties", :action => "show", :pretty_id => 'mypostie').should == "/mypostie"
    end
  
  end
  
  
  describe "route recognition" do

    it "should generate params for #new" do
      params_from(:get, "/").should == {:controller => "posties", :action => "new"}
    end

    it "should generate params for #create" do
      params_from(:put, "/").should == {:controller => "posties", :action => "create"}
    end

    it "should generate params for #new" do
      params_from(:get, "/mypostie").should == {:controller => "posties", :action => "show", :pretty_id => "mypostie"}
    end
  end
end
