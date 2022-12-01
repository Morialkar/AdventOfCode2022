begin
  load File.expand_path("../1.rb", __FILE__)
rescue LoadError
end
A ||= "."

puts A
exit(0)
