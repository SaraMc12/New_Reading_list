
require 'rest-client'
require 'json'
require 'pry'


class GoogleBooksList

    def initialize(string)
        @search_string = string
    end

    def top_5_results
        items = book_info_array["items"]
        info_array_length = book_info_array.length
        min_index = 5
        if info_array_length  < 5
            min_index = info_array_length
        else
            min_index = 5
        end
    
        books = []
        for index in 0..min_index + 1
            book = Hash.new
            book["id"] = index + 1
            book["title"] = items[index]["volumeInfo"]["title"]
            book["authors"] = items[index]["volumeInfo"]["authors"]
            book["publisher"] = items[index]["volumeInfo"]["publisher"]
            books[index] = book
        end
        return books
    end

     private

    def url
        "https://www.googleapis.com/books/v1/volumes?q=" + @search_string
    end

    def book_info_array
        begin
            response = RestClient.get(url)
        rescue RestClient::ExceptionWithResponse => e
            puts("error, please type in the name, genre or topic of a book")
        end

        JSON.parse(response.body)
    end
end


