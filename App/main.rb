require_relative "google_books_list"
require "pry"

# ClassNamesLookLikeThis
# most_variables_look_like_this
# CONSTANTS_ARE_LOUD
# paths/to/files/are/snake_case.rb

england_list = GoogleBooksList.new("england")
england_books = england_list.top_5_results
puts(england_books)

spain_list = GoogleBooksList.new("spain")
spain_books = spain_list.top_5_results

puts(spain_books)


