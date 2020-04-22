#this is the new code I am trying to transfer from JS to RB
class Get_API_Call
    RestClient.get ' "https://www.googleapis.com/books/v1/volumes?q="', {params: {bookId: index +1 , bookTitle:, bookAuthor:, bookPublisher:}}
end

class Call_The_API
    .get(Get_API_Call(params))
    .then(API_Succsess_Handler)
end

class API_Succsess_Handler(response)
    def book_info_array
        response.data.items do
    end
    def consoleTable
        top_5_results(book_info_array) do
    end
end





