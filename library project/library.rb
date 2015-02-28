require 'yaml'

class Library
   attr_accessor :books

   def initialize lib_arr = false
    @lib_arr = lib_arr
    @books = @lib_arr ? YAML::load(File.read(@lib_arr)) : []
   end
end
