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
    []
  end
end
