# names = ["Bob", "James", "John"]
# names.each {|name| print name + ", "}

# 10.times {puts "Hello, world"}
# james_bond = {:first_name => "James", :middle_name => "Robeht", :last_name => "Bond"}
# james_bond.each_key{|key| puts james_bond[key]}

File.open("/tmp/blocks.txt", "w") {|f| f.puts "hello world"}