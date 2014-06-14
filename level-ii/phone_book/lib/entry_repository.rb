class EntryRepository
  def self.in(dir)
    new
  end
#
  def initialize
  end
#
  def find_by_last_name(name)
    []# people.find_by(:last_name, name).map {|person|
    # numbers = phone_numbers.find_by(:person_id, person[:id]).map {|number|
    #   format number[:phone_number]
    # }
    # Entry.new(person[:first_name], person[:last_name], numbers)
    # }
  end
#
#   private
#
#   def format(number)
#     digits = number.delete("-.")
#     area_code = digits[0..2]
#     exchange = digits[3..5]
#     subscriber = digits[-4..-1]
#
#     "(%s) %s-%s" % [area_code, exchange, subscriber]
#   end
end
