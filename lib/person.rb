require "pry"

class Person

  def initialize(name, balance = 25, happiness = 8, hygiene = 8)
    @name = name
    @balance = balance
    @happiness = happiness
    @hygiene = hygiene
  end

  def name
    @name
  end

  def bank_account
    @balance
  end

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  def bank_account=(new_amount)
   @balance = new_amount
  end

   def happiness=(new_points)
     if new_points > 10
       new_points = 10
     end
     if new_points < 0
       new_points = 0
     end
    @happiness = new_points
   end

  def hygiene=(new_points)
    if new_points > 10
      new_points = 10
    end
    if new_points < 0
      new_points = 0
    end
   @hygiene = new_points
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @balance = @balance + salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness = @happiness + 3
    person.happiness = person.happiness + 3
      return "Hi #{person.name}! It's #{self.name}. How are you?"
  end


  def start_conversation(person, topic)

    if topic == "politics"
      # binding.pry
      # self.happiness = @happiness - 2
      # person.happiness = person.happiness - 2
      person.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      person.happiness = person.happiness + 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
