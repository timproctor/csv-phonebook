gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/entry_repository'
require_relative 'entry'

class EntryRepositoryTest < Minitest::Test
  def entries
    [
      { first_name: "Alice", last_name: "Smith", phone_number: "111.111.1111" },
      { first_name: "Bob", last_name: "Smith", phone_number: "222.222.2222" },
      { first_name: "Charlie", last_name: "Jones", phone_number: "333.333.3333" }
    ].map {|row| Entry.new(row)}
  end

  def repository
    @repository ||= EntryRepository.new(entries)
  end
end
