require './app/api_caller'

        describe call_api do
        context"When method calls the api" do
        it "returns http success" do
          expect(api_caller).to eq("cooking")
          "https://www.googleapis.com/books/v1/volumes?q=cooking" 
        end
        # it "JSON body response contains title, author and publisher attributes" do
        #   json_response = JSON.parse(response.body)
        #   expect(hash_body.keys).to match_array(["title", "authors", "publisher"])
        # end
      end
end
    
    

