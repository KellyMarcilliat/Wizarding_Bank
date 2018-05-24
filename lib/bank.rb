require 'pry'
require './lib/person'

class Bank

  attr_reader :name

  def initialize(name)
    @name = name
    @account_holders = {}
  end

  def open_account(person)
    person.accounts[name] = 0
    @account_holders[person.name] = person.accounts[name]
    # binding.pry
  end

  def account_holders
    @account_holders
  end

  def deposit(person, amount)
    # binding.pry
    person.accounts[name] += amount
  end
end


chase = Bank.new("JP Morgan Chase")
p chase

person1 = Person.new("Minerva", 600)
p chase.open_account(person1)
p person1.accounts
p chase.deposit(person1, 50)
p chase.account_holders
