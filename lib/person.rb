class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  @@all = []

  def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
    @@all << self
  end

  def self.all
    @@all
  end

  def happiness=(happiness)
    if happiness < 0
      @happiness = 0
    elsif happiness > 10
      @happiness = 10
    else
      @happiness = happiness
    end
  end

  def hygiene=(hygiene)
    if hygiene < 0
      @hygiene = 0
    elsif hygiene > 10
      @hygiene = 10
    else
      @hygiene = hygiene
    end
  end


    def happy?
      @happiness > 7
    end

    def clean?
      @hygiene > 7
    end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    @happiness += 2
    self.hygiene=(@hygiene)
    self.happiness=(@happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    if Person.all.include?(person)
      person.happiness += 3
      self.happiness += 3
      "Hi #{person.name}! It's #{self.name}. How are you?"
    end
  end

  def start_conversation(person, topic)
     case topic
      when "politics"
        person.happiness -= 2
        self.happiness -= 2
        "blah blah partisan blah lobbyist"
     when "weather"
        person.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
     else
        "blah blah blah blah blah"
     end
  end

end

lige = Person.new("Lige")

nosa = Person.new("Nosa")

dan = Person.new("Dan")

puts Person.all.collect {|person| person.bank_account}