# New_Reading_list

Hello! Welcome to my code. Thank you for taking the time to look over what I have made. I'm sure you have a ton of work to do and quarantine is making life insane right now and looking over a baby devs code was not your idea of a fun way to end an evening. But, hey when in quarantine...anything seems exciting right?!? 
So, without further adieu here it is! ta daaaaaa...
This is Command Line App that filters data from the Google Books API and allows you to select and save a reading list locally

### how to use it

You can easily clone this from the repo and test it in your favorite text editor by typing `git clone` and pasting the repo into your terminal.
Once you have the repo cloned type in your terminal `gem install bundler` this should manage all the gems inside the app

Once that is installed right you can start looking for books. 

Go into the `app` folder and click the file `main.rb ` and open it in the terminal then type 
`ruby app/main.rb`  

A prompt will ask you to:

"please enter a name or genre of a book"

### Ex:
```
$ ruby app/main.rb
Please enter a name or genre of a book ex: gone with the wind ex: humor

```
A confirmation will appear

```
humor
Search Term given is humor

```
A table will then display five books including the following api information

* Title
* Author
* Publisher

The user is then prompted to choose a book from the reading list.

```
Please select a book to save to your reading list using the number id. ex: 1 (for book choice 1)

```
If none of the books are enough of an escape to tear the user away from Netflix they can easily press Ctrl C to start over.

and if they do find one they just select from the array given to them and BOOM the users desired new book is saved inside a local json reading list for them.

### Ex:
```
Please select a book to save to your reading list using the number id. ex: 1 (for book choice 1)
4
your book has been saved to your readingList
```
now the desired book info will live inside the `readinglist,json` file

```
{"id"=>4, "title"=>"An Anatomy of Humor", "authors"=>["Arthur Asa Berger"], "publisher"=>"Transaction Publishers"}
```

### Running the tests
Inside the terminal type
`rspec spec/api_call_spec.rb `

### Fun facts about my process

### 1. Ruby is not my first language


Ruby is still a new language to me but I chose to start learning about it to gain a better understanding of how Object-Oriented Programming worked. It seemed like the best idea at the time, there are some awesome Rubyists like Sandi Metz who have written books and talk on the subject a lot and the ruby community is very welcoming. 
I come from a javascript Bootcamp background and have been dabbling in ruby for several months. There is still a lot to learn but this experience has helped me better understand the things in Sandi's book "Practical Object-Oriented Design" and given me some more attempts to mess with RSpec

### 2. I had more tests in the beginning

Okay, so it's like this, I started by writing small simple tests to help me plan out things and as the app got more complex I had a harder time figuring out how to test drive it.TDD is still a new concept to me and I have been working on and I have grown in my understanding but I know I still have much to learn about it. I thought about this as a sprint and in this sprint I wanted to get a working program with the fewest amount of dependencies that was clean and easy to read. There is much more I can do to improve this app and regardless I plan to continue to learn from this and get better and better.
