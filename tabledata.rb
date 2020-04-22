catagories = [[1.23, 5, :bagels], [3.14, 7, :gravel], [8.33, 11, :saturn], [15.75, 10, :fairyfarts]]

bar = '-'*(catagories[0][0].to_s.length + 4 + catagories[0][1].to_s.length + 4 + catagories[0][2].to_s.length + 4) 

puts bar
catagories.each do |i|
  i.each.with_index do |j,k|
    if k == 1 && j < 10
      print "| #{j} "
    else
      print "| #{j} "
    end
  end
  print '|'
  puts
end
puts bar