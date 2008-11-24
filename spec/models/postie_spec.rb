require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Postie do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :body => "value for body"
    }
  end

  it "should create a new instance given valid attributes" do
    Postie.create!(@valid_attributes)
  end
  
  describe "find_by_pretty_id" do
    it "should return the first name that matches" do
      postie = Postie.new(:name => 'My Postie')
      postie.save!
      
      Postie.find_by_pretty_id('mypostie').should == postie
    end
    it "should raise an error when no name matches" do
      postie = Postie.new(:name => 'My Postie')
      postie.save!
      
      lambda{Postie.find_by_pretty_id('dontexist')}.should raise_error(ActiveRecord::RecordNotFound)
    end
  end
  
  it "should know its pretty_id" do
    postie = Postie.new(:name => 'My Postie')
    postie.pretty_id.should == 'mypostie'
  end
  
  it "should use its pretty_id for params" do
    postie = Postie.new(:name => 'My Postie')
    postie.to_param.should == postie.pretty_id
  end
end
