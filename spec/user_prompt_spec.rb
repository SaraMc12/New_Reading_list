require 'App/user_prompt'

RSpec.describe UserPrompt do
    
    context "When testing UserPrompt class" do
        it "should say 'what book do you want to add to the reading list' when you call the select_a_book_prompt method" do
            up = UserPrompt.new
            prompt = up.select_a_book_prompt
            expect(prompt).to eq"what book do you want to add to the reading list"
        end
    end

end