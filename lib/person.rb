require 'pry'

class Person
  attr_reader   :name,
                :cash
  attr_accessor :accounts

  def initialize(name, cash = 0)
    @name = name
    @cash = cash
    @accounts = {}
  end

end

# person1 = Person.new("Luna", )
# p person1
