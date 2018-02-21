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

  
  def self.reset_all
    self.all.clear
  end

  def say_species
    puts "#{@species}"
  end
end
