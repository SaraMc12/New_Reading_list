# require 'rest-client'

#this is to make sure my test suite worked and passed
class User_Prompt
    
    def greeting_prompt
        "Hello, here are some books to choose from"
    end
    
    def selection_prompt()
        "Please select a book to save to your reading list"
       #allow user to select a book by it's ID
        # @select_a_book
      # it will take that array and save the info into an external json file
        # @update_json
    end

    def confirmation_prompt
        "Great choice your book has been added to your reading list"
        
    end
end



