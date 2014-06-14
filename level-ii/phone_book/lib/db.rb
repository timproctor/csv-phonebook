class DB

  def self.read(filename)
    new CSV.open(filename, headers: true, header_converters: :symbol).to_a
  end
  
  def find_by(field, value)
    []
  end
end
