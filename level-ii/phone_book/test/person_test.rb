gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

class PersonTest < Minitest::Test
  def test_attributes
    person = Person.new(first_name: 'Alice')
    assert_equal 'Alice', person.first_name
  end
end
