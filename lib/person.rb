class Person
  attr_accessor :happiness, :bank_account, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end

  def person
    @person.name
  end

  # def bank_account=(bank_account)
  #   @bank_account
  # end

  # def bank_account
  #   @bank_account = 25
  # end

  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    # salary.times do
    #   @bank_account += salary
    # end
    @bank_account += salary
    # return @bank_account
    return "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene = @hygiene

    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene = hygiene
    @happiness += 2
    self.happiness = happiness
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness += 3
    friend.happiness += 3
    self.happiness = happiness
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend,topic)
     if topic == "politics"
      friend.happiness -= 2
      self.happiness -= 2
       "blah blah partisan blah lobbyist"

     elsif topic == "weather"
        friend.happiness += 1
        self.happiness += 1
          "blah blah sun blah rain"

     elsif topic != "politics" || "weather"
       "blah blah blah blah blah"
     end
   end

end
