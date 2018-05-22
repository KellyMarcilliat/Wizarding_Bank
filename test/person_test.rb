require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

class PersonTest < Minitest::Test
  def test_person_object_exists
    person1 = Person.new("Minerva", 1000)

    assert_instance_of Person, person1
  end

  def test_person_can_have_name
    person2 = Person.new("Luna", 500)

    assert_equal "Luna", person2.name
  end

  def test_person_can_have_cash
    person2 = Person.new("Luna", 500)

    assert_equal 500, person2.cash
  end

end
