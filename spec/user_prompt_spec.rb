require './app/user_prompt'

RSpec.describe User_Prompt do

    context "When testing HelloWorld class" do
        it "should say 'Hello World' when we call the say_hello method" do
            up = User_Prompt.new
            message = up.greeting_prompt
            expect(message).to eq "Hello, here are some books to choose from"
        end
    end
        it "should ask a question" do
            up = User_Prompt.new
            message = up.selection_prompt
            expect(message).to eq "Please select a book to save to your reading list" 
        end
        it "should ask a question" do
            up = User_Prompt.new
            message = up.confirmation_prompt
            expect(message).to eq "Great choice your book has been added to your reading list" 
        end

end

