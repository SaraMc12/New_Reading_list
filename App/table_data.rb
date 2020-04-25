class Table_data
   
    def initialize(table)
        @current = table
        @wall = '|'
        @tile = '-----'
        @cornering = '+'
        @floor = compose_floor(@tile, @cornering)
    end

    def to_string
        @current.map { |line|
            @wall + compose_inner_cells(line) + @wall
        }.join(@floor)
    end

    private
    def compose_floor(tile, c)
        "\n" + c + tile + c + tile + tile + tile + c + tile + tile +  tile + c + tile + tile + tile + c + "\n"
    end

    # def compose_inner_cells(line)
    #     line.map { |cell|
    #         " #{cell} "
    #     }.join(@wall)
    # end
 end
end

