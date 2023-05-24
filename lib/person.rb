# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
   
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    
    def happiness=(value)
       @happiness = value.clamp(0, 10)
    end

    def hygiene=(value)
        @hygiene = value.clamp(0, 10)
     end

     def happy?
        happiness > 7 ? true : false
     end

     def clean?
        hygiene > 7 ? true : false
     end
     
     def get_paid(amount)
        @bank_account = @bank_account + amount
        "all about the benjamins"
     end
end

kevin = Person.new("Kevin")
# binding.pry