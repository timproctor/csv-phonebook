
class DB

  def self.read(filename, klass)
    rows = CSV.open(filename, headers: true, header_converters: :symbol)
    objects = rows.map do |row|
                klass.new(row)
              end
      new(objects)
  end

  attr_reader :objects

  def initialize(objects)
    @objects = objects
  end

  def find_by(attribute, value)
    objects.select {|datum| datum.send(attribute) == value}
  end

end
