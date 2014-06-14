class EntryRepository
  def self.in(dir)
    people = DB.read(File.join(dir, 'people.csv'))
    phone_numbers = DB.read(File.join(dir, 'phone_numbers.csv'))
    new(people, phone_numbers)
  end

  attr_reader :people, :phone_numbers

  def initialize(people, phone_numbers)
    @people = people
    @phone_numbers = phone_numbers
  end

  def find_by_last_name(name)
    people.find_by(:last_name, name).map do |person|
      numbers = phone_numbers.find_by(:person_id, person[:id]).map do |number|
        number[:phone_number]
    end
       Entry.new(person[:first_name], person[:last_name], numbers)
    end
  end

  # def people
  #   DB.new(people_data)
  # end
  #
  # def phone_numbers
  #   DB.new(phone_numbers_data)
  # end


  # def find_by_last_name(name)
  #   people.select do |person|
  #     person[:last_name] == name
  #   end.map do |person|
  #     numbers = phone_numbers.select do |number|
  #       number[:person_id] == person[:id]
  #     end.map do |number|
  #       number[:phone_number]
  #     end
  #     Entry.new(person[:first_name], person[:last_name], numbers)
  #   end
  # end
end
