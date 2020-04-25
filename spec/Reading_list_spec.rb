require './app/reading_list'
require './app/api_caller'


RSpec.describe HelloWorld do

    context "When testing HelloWorld class" do
        it "should say 'Hello World' when we call the say_hello method" do
            hw = HelloWorld.new
            message = hw.say_hello
            expect(message).to eq "Hello World!"
        end
    end

    context "When testing user prompt" do
        it "should return test" do
            up = user_prompt.new
            expect(up).to eq "test"

        end
    end

