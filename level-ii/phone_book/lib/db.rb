class DB

  def self.read(filename)
    new CSV.open(filename, headers: true, header_converters: :symbol).to_a
  end

  attr_reader :data

  def initialize(data)
    @data = data
  end

  def find_by(field, value)
    data.select {|datum| datum[field] == value}
  end

end
