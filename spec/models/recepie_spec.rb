require 'spec_helper'

describe Recepie do
  context "basic testing" do 
  
      let(:sample2) {FactoryGirl.create(:recepie)}
    
    
    it "should be valid" do
      sample2.should be_valid
    end
  
    it "has a name" do
      sample2.name = " "
      sample2.should_not be_valid
    end
    
    it "has a summary" do
      sample2.summary = " "
      sample2.should_not be_valid
    end
    
    it "has a description" do
      sample2.description = " "
      sample2.should_not be_valid
    end
    
   it "Name should not be too long" do
     
     sample2.name = "a" * 101
     sample2.should_not be_valid
      
   end
   
   it "Name should not be too short" do
     
     sample2.name = "aa"
     sample2.should_not be_valid
      
   end
   
   it "Summary should not be too long" do
     
     sample2.summary = "a" * 401
     sample2.should_not be_valid
      
   end
   
   it "Summary should not be too short" do
     
     sample2.summary = "aaa"
     sample2.should_not be_valid
   end
   
   it "Description should not be too long" do
     
     sample2.description = "a" * 401
     sample2.should_not be_valid
      
   end
   
   it "Description should not be too short" do
     sample2.description = "aaa"
     sample2.should_not be_valid
      
   end
    
    it "Should have a chef id" do
     sample2.chef_id = nil
     sample2.should_not be_valid
      
   end
    
    
    
  end
end

