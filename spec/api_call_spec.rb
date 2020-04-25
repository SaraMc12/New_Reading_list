require './app/google_books_list'

      RSpec.describe GoogleBooksList do
        context"When I call top 5 results" do
        it "returns 5 books" do
          book_list = GoogleBooksList.new("england").top_5_results
          expect(book_list.length).to eq(5)
          expect(book_list[0]["title"]).to eq("The Description of England") 
          expect(book_list[0].keys).to match_array(["title", "authors", "publisher", "id"])
        end
      end
      
    
end
