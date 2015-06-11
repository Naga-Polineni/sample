require 'spec_helper'

describe Chef do
  context "basic testing" do 
  
    let(:sample2) {FactoryGirl.create(:chef , name: "Aditya" , password: "password" )}
    
    
    it "should be valid" do
      sample2.should be_valid
    end
  
    it "has a name" do
      sample2.name = " "
      sample2.should_not be_valid
    end
    
    it "has an email" do
      sample2.email = " "
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
   
   it "Email id should be unique" do
     
     sample1 = sample2.dup
     sample1.save
     sample1.should_not be_valid
      
   end
   
   it "Allows the following emails" do
     sample = %w[adi@example.com hello@hsjsl.com]
     sample.each do |exam|
       sample2.email = exam
       sample2.should be_valid, "#{exam} is not a valid email address" 
     end
   end
   
   it "Does nor Allows the following emails" do
     sample = %w[adi hello.hsjsl.com fndkjkw&bdsjhskd]
     sample.each do |exam|
       sample2.email = exam
       sample2.should_not be_valid, "#{exam} is a valid email address" 
     end
   end
   
   
    
    
    
    
  end
end

