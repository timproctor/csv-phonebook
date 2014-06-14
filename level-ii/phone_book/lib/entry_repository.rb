class EntryRepository
  def self.in(dir)
    new
  end

  attr_reader :people, :phone_numbers

  def initialize(people, phone_numbers)
    @people = people
    @phone_numbers = phone_numbers
  end

  def find_by_last_name(name)
    people.select do |person|
      person[:last_name] == name
    end.map do |person|
      numbers = phone_numbers.select do |number|
        number[:person_id] == person[:id]
      end.map do |number|
        number[:phone_number]
      end
      Entry.new(person[:first_name], person[:last_name], numbers)
    end
  end
end
