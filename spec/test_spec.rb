require 'table_data'

RSpec.describe Table_Data
    context "it should print something" do
        it "should print out this mock up of a table" do
            mock_table = [ [ "", "", "", "" ],
                            [ "", "", "" , ""]
                            [ "", "", "" , ""] 
                            [ "", "", "" , ""],
                            [ "", "", "" , ""] ]
            table = table.new(mock_table)
            actual = table.to_string
            expected = "|            |\n"\
                        "+---+---+---+\n"\
                        "|            |\n"\
                        "+---+---+---+\n"\
                        "|            |\n"\
                        "+---+---+---+\n"\
                        "|            |\n"\
                        "+---+---+---+\n"\
                        "|            |"
            expect(actual).to eq(expected)
    end
end
