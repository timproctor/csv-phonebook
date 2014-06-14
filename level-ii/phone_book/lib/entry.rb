# Entry = Struct.new(:first_name, :last_name, :numbers) do
#   def name
#     "#{first_name} #{last_name}"
#   end
#
#   def find_by_last_name(name)
#     people.select {|person|
#       person[:last_name] == name
#       }.map {|person|
#         numbers = phone_numbers.select {|number|
#           number[:person_id] == person[:id]
#           }.map {|number|
#             number[:phone_number]
#             }
#             Entry.new(person[:first_name], person[:last_name], numbers)
#             }
#   end
# end
