#
#
# class DB
#   def self.in(dir)
#     people = DB.read(File.join(dir, 'people.csv'))
#     phone_numbers = DB.read(File.join(dir, 'phone_numbers.csv'))
#     new(people, phone_numbers)
#   end
#
#   attr_reader :data
#
#   def initialize(data)
#     @data = data
#   end
#
#   def find_by(field, value)
#     data.select {|datum| datum[field] == value}
#   end
# end
