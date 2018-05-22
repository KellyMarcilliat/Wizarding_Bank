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

  def test_account_can_be_opened_with_customer_name
    chase = Bank.new("JP Morgan Chase")
    person = Person.new("Minerva")
    assert_equal Minerva_account, person.open_account
  end

end
