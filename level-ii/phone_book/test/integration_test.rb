gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/phone_book'
require_relative '../lib/entry_repository'

# class IntegrationTest < Minitest::Test
#   def test_lookup_by_last_name
#     phone_book = PhoneBook.new
#     entries = phone_book.lookup('Mueller').sort_by {|e| e.first_name}
#     assert_equal 2, entries.length
#     e1, e2 = entries
#     assert_equal "Justina Mueller", e1.name
#     assert_equal "Sharon Mueller", e2.name
#     assert_equal ["(433) 346-3946"], e1.numbers
#     assert_equal ["(296) 580-0926", "(484) 305-0295", "(836) 069-1792"], e2.numbers.sort
#   end
# end

class IntegrationTest < Minitest::Test
  def test_lookup_by_last_name
    repository = EntryRepository.in('./test/fixtures')
    phone_book = PhoneBook.new(repository)
    entries = phone_book.lookup('Smith').sort_by {|e| e.first_name}
    assert_equal 2, entries.length
    e1, e2 = entries
    assert_equal "Alice Smith", e1.name
    assert_equal "Bob Smith", e2.name
    assert_equal ["(111) 000-1234"], e1.numbers
    assert_equal ["(222) 000-1234", "(222) 001-1234"], e2.numbers.sort
  end
end
