# require_relative 'entry_repository'
# require '../lib/db'
# require 'csv'
# require './lib/entry'
#
#
#
class PhoneBook
  attr_reader :repository

  def initialize(repository=EntryRepository.in('./data'))
    @repository = repository
  end
  
  def lookup(name)
    repository.find_by_last_name(name)
  end
end
