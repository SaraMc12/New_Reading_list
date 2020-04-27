require_relative "google_books_list"
require_relative "user_prompt"
require_relative "user_list"
require "pry"

prompt = UserPrompt.new
greet = prompt.greeting_prompt
books = prompt.return_top_5_books
choose = prompt.select_one_book
book_selector = prompt.selection_prompt(books)
confirmation = prompt.confirm_message



