require 'net/http'

module ReadingList

    class Book_Search
        def api_call(user_search_params)
            Net::HTTP.get('"https://www.googleapis.com/books/v1/volumes?q="') + user_search_params
        end
    end

    class Print_Results
        def method_name
            
        end
    end
end