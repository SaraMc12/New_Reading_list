require 'api_caller'

Rspec.describe Get_Api_Call do
    
    context "When calling google books Api"do
        it "Should return the correct URL"do
            expect(Get_Api_Call("cats")).to eq "https://www.googleapis.com/books/v1/volumes?q=cats"
            
        end
    end
end
