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
    last, first = name.split(', ')

    if first
      repository.find_by_first_and_last_name(first, last)
    else
      repository.find_by_last_name(last)
    end
  end

  def reverse_lookup(number)
    repository.find_by_number(number)
  end

end
