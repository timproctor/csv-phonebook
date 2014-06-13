class EntryRepository
  def self.in(dir)
    new
  end

  attr_reader :entries

  def initialize(entries)
    @entries = entries
  end

  def find_by_last_name(name)
    entries.select {|entry| entry.last_name == name}
  end
end
