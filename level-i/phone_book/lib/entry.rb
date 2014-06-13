class Entry
  attr_reader :last_name, :first_name, :name, :phone_number

  def initialize(data)
    @last_name = data[:last_name]
    @first_name = data[:first_name]
    @name = "#{first_name} #{last_name}"
    @phone_number = data[:phone_number]
  end
end
