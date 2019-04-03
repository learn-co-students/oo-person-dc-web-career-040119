require 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end



  def happiness
    @happiness
  end

  def happiness=(new_happiness)
    @happiness=new_happiness.clamp(0,10)
  end

  def hygiene
    @hygiene
  end

  def hygiene=(new_hygiene)
    @hygiene=new_hygiene.clamp(0,10)
  end

  def happy?
    self.happiness > 7
end

  def clean?
    self.hygiene > 7
end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
      self.hygiene+= 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    # decrement happiness
      self.happiness += 2
    # increment hygiene
      self.hygiene -= 3
    # return queen lyrics
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    # increment caller's happiness
    self.happiness +=3

    # increment callee's happiness
    friend.happiness +=3

    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness -=2
      friend.happiness = (friend.happiness-2)
      return "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness +=1
      friend.happiness = (friend.happiness + 1)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
  end

end
end
