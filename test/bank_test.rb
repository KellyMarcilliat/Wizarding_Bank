require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'
require './lib/person'

class BankTest < Minitest::Test
  def test_bank_instance_exists
    bank = Bank.new(bank)
    assert_instance_of Bank, bank
  end

  def test_bank_takes_a_name
    chase = Bank.new("JP Morgan Chase")
    assert_equal "JP Morgan Chase", chase.name
  end

  def test_account_can_be_opened_with_zero_balance
    chase = Bank.new("JP Morgan Chase")
    person = Person.new("Minerva", 500)
    assert_equal 0, chase.open_account(person)
  end

  def test_deposit_increases_account_value
    chase = Bank.new("JP Morgan Chase")
    person = Person.new("Minerva", 1000)
    chase.open_account(person)
    assert_equal 500, chase.deposit(person, 500)
  end

end
