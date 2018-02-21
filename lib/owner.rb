class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(pet)
    fish = Fish.new(pet)
    @pets[:fishes] << fish
  end

  def buy_cat(pet)
    cat = Cat.new(pet)
    @pets[:cats] << cat
  end

  def buy_dog(pet)
    dog = Dog.new(pet)
    @pets[:dogs] << dog
  end
end
