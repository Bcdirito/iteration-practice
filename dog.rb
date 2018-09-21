class Dog

  attr_reader :name, :age, :likes

  @@all = []

  def initialize(name, age, likes = [])
    @name = name
    @age = age
    @likes = likes
    @@all << self
  end

  def self.all
    @@all
  end

  def self.named(name)
    self.all.each do |hound|
      if hound.name == name
        return hound
      end
    end
    nil
  end

  def self.all_names
    names = []
    self.all.each do |doggie|
      names << doggie.name
    end
    names
  end

  def self.senior_dogs
    senior_dogs = []
    self.all.each do |doggo|
      if doggo.age > 10
        senior_dogs << doggo
      end
    end
    senior_dogs
  end

  def self.puppies
    puppies = []
    self.all.each do |pup|
      if pup.age < 2
        puppies << pup
      end
    end
    puppies
  end

  def self.all_ages_in_human_years
    ages_in_human_years = []
    self.all.each do |pupper|
      ages_in_human_years << pupper.age * 7
    end
    ages_in_human_years
  end

  def self.all_who_like(like)
    dogs_who_like_the_thing = []
    self.all.each do |doge|
      if doge.likes.include?(like)
        dogs_who_like_the_thing << doge
      end
    end
    dogs_who_like_the_thing
  end

end
