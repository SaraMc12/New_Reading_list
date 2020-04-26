 require 'rest-client'
 require_relative 'google_books_list'
 require_relative "user_list"
 

class UserPrompt
    
    def greeting_prompt
        puts "Hello, here are some books to choose from"
        search_term = gets.strip
        puts "Search Term given is " + search_term
        list = GoogleBooksList.new(search_term)
        books = list.top_5_results
        puts(books)
        return(books)
        
    end
    
    def selection_prompt(books)
        puts "Please select a book to save to your reading list"
        selection_response = gets.strip
        user_list = UserList.new

        user_list.save_book_to_reading_list(books[selection_response.to_i - 1])
    end

    def confirmation_prompt
        "Great choice your book has been added to your reading list"
        
    end
end



