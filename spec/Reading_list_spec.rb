require 'reading_list'


RSpec.describe HelloWorld do

    context "When testing HelloWorld class" do
        it "should say 'Hello World' when we call the say_hello method" do
            hw = HelloWorld.new
            message = hw.say_hello
            expect(message).to eq "Hello World!"
        end
    end




   # context "When testing a book search" do
       # it "should return a string" do
        #user_params = ("")
           # expect().to qu()
       # end
    #end

   # context "When Book_search is called" do
        #it "should create a new table for data" do
       # end

    #context "When table Data is populated" do
        #it "Should set Params of bookId = index + 1" do
          #  expect (top_5_results).to eq([i]+"bookTitle, bookAuthor, bookPublisher")
            
       # end
    
end



        