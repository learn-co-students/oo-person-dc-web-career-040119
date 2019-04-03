require 'pry'

class Person
  def initialize(name)
    @name = name
    @bank = 25
    @happiness = 8
    @hygiene = 8
  end

  attr_reader(name)
  attr_accessor(bank)

  def happiness
    @happiness
  end

  def happiness=(new_happiness)
    @happiness=new_happiness
  end

  def hygiene
    @hygiene
  end

  def hygiene=(new_hygiene)
    @hygiene=new_hygiene
  end

  def happy?
    if @happiness > 7 ? true : false
  end

  def clean?
    if @happiness > 7 ? true : false
  end

  def get_paid(salary)
    @bank += salary
    return "all about the benjamins"
  end

  def take_bath
    if @hygiene >= 6
      @hygiene = 10
    else
      @hygiene += 4
    end
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    # decrement happiness
    if @happiness >= 8
      @happiness = 10
    else
      @happiness += 2
    end
    # increment hygiene
    if @hygiene <= 3
      @hygiene = 0
    else
      @hygiene -= 3
    end
    # return queen lyrics
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    # increment caller's happiness
    if @happiness >= 7
      @happiness = 10
    else
      @happiness += 3
    end

    # increment callee's happiness
    if friend.happiness >= 7
      friend.happiness = 10
    else
      friend.happiness += 3
    end

  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      @happiness = (@happiness - 1).clamp(0, 10)
      friend.happiness = (friend.happiness - 1).clamp(0, 10)
      return "blah blah partisan blah lobbyist"
    when "weather"
      @happiness = (@happiness - 1).clamp(0, 10)
      friend.happiness = (friend.happiness - 1).clamp(0, 10)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
  end

end
