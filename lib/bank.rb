require 'pry'
require './lib/person'



class Bank

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def open_account(person)
    person_account = Person.new(person, balance = 0)
  end
end


chase = Bank.new("JP Morgan Chase")
p chase

wells_fargo = Bank.new("Wells Fargo")
p wells_fargo

p chase.open_account("Minerva")
