require 'pry'
# your code goes here
class Person


  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness_points = 8
    @hygiene_points = 8
  end
  #The happiness and hygiene points should be able to change,
  #however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
  #getter
  #has min 0 and max of 10
  #setter
  def happiness=(happiness_points)
    @happiness_points = happiness_points
    if @happiness_points > 10
      @happiness_points = 10
    elsif @happiness_points < 0
      @happiness_points = 0
    end
  end
  #getter
  def happiness
    @happiness_points
  end

  #setter
  def hygiene=(hygiene_points)
    @hygiene_points = hygiene_points
    if @hygiene_points >10
      @hygiene_points = 10
    elsif @hygiene_points < 0
      @hygiene_points = 0
    end
  end

  #getter
  def hygiene
    @hygiene_points

  end

  def happy?
    #if
    @happiness_points > 7
    #self
    #     true
    #   else
    #     false
    #   end
  end

  def clean?
    @hygiene_points > 7
    # true
  end

  def get_paid (salary)

    @bank_account += salary

    return "all about the benjamins"
  end
  #accepts salary amt and adds to bank bank_account
  #returns string "all about the benjamins"

  def take_bath
    #increment hygiene_points by 4
    #return string "♪ Rub-a-dub just relaxing in the tub ♫"..
    self.hygiene +=4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness +=2
    self.hygiene -=3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    #should accept another instance of the person class
    #the method should increment the caller and the callees happiness_points by 3
    #if stella calls her friend felix
    #return "hi felix"
    [friend, self].each {|o| o.happiness += 3 }
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    objects = [self, person]
    if topic == "politics"
      objects.each { |o| o.happiness -= 2}
      first, second = ["partisan", "lobbyist"]
    elsif topic == "weather"
      objects.each { |o| o.happiness += 1}
      first, second = ["sun", "rain"]
    end
    first ||= "blah"
    second ||= "blah"
    base_string = "blah blah #{first} blah #{second}"
  end
end
