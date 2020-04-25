
require 'rest-client'
require 'json'
require 'pry'


def call_api(user_search_parameters)
    url = "https://www.googleapis.com/books/v1/volumes?q=" + user_search_parameters
    return url
end

def json_parse(url)
    begin
        response = RestClient.get(url)
    rescue RestClient::ExceptionWithResponse => e
        puts("error, please type in the name, genre or topic of a book")
    end

    data = JSON.parse(response.body)
    return data
end

def top_5_results(book_info_array)
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

def user_prompt
    puts "Please select a book for your reading list"
end


puts(user_prompt)
url = call_api("cooking")
data = json_parse(url)
books = top_5_results(data)
puts(books)



