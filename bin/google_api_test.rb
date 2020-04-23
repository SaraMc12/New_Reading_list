require 'rest-client'
require 'json'
require 'pry'

url = "https://www.googleapis.com/books/v1/volumes?q=quilting"

response = RestClient.get(url)
data = JSON.parse(response.body)

items = data["items"]
first_book= items[0]

items.each { |item| binding.pry}
binding.pry

#items.each https://ruby-doc.org/core-2.7.0/Array.html#method-i-each
#items.map