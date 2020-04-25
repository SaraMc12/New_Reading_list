class UserList

    def save_book_to_reading_list(selected_book)
        f = File.open("readlingList.json", "a")
        f.write(selected_book)
        f.write "\n"
        f.close
    end
end