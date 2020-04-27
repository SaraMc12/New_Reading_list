require 'rest-client'
require_relative 'google_books_list'
require_relative "user_list"


class UserPrompt

    def greeting_prompt
        puts "Please enter a name or genre of a book ex: gone with the wind ex: humor"
    end
    
    def return_top_5_books
        search_term = gets.strip
        puts "Search Term given is " + search_term
        list = GoogleBooksList.new(search_term)
        books = list.top_5_results
        puts(books)
        return(books)
    end

    def select_one_book
        puts "/"
        puts "Please select a book to save to your reading list using the number id. ex: 1 (for book choice 1)"
    end

    def selection_prompt(books)
        selection_response = gets.strip
        user_list = UserList.new
        user_list.save_book_to_reading_list(books[selection_response.to_i - 1])
    end

    def confirm_message
        puts "your book has been saved to your readingList"
    end 
end 


