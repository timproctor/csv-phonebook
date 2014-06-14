class Person
  attr_reader :first_name
  def initialize(data)
    @first_name = data[:first_name]
  end
end
