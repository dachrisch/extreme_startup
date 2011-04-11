require 'spec_helper'
require 'extreme_startup/subtraction_question'

module ExtremeStartup
  describe SubtractionQuestion do
    let(:question) { SubtractionQuestion.new }
    
    it "converts to a string" do
      question.to_s.should =~ /what is \d+ minus \d+/i
    end
    
    context "when the numbers are known" do
      let(:question) { SubtractionQuestion.new(2,3) }
        
      it "converts to the right string" do
        question.to_s.should =~ /what is 2 minus 3/i
      end
      
      it "identifies a correct answer" do
        question.answered_correctly?("-1").should be_true
      end

      it "identifies an incorrect answer" do
        question.answered_correctly?("77").should be_false
      end
    end
    
  end
end
