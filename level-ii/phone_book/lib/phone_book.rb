require_relative '../lib/db'
require 'csv'
require_relative '../lib/entry'
require_relative '../lib/person'
require_relative '../lib/phone_number'

class PhoneBook
  attr_reader :repository

  def initialize(repository=EntryRepository.in('./data'))
    @repository = repository
  end

  def lookup(name)
    repository.find_by_last_name(name)
  end
end
