require 'pry'

class Owner
  attr_accessor :name, :fishes, :dogs, :cats, :pets
  attr_reader :species
  
  @@all = []
  
  #"is initialized with a pets attribute as a hash with 3 keys" 
  #({:fishes => [], :dogs => [], :cats => []})
  def initialize(species)
    @species = species
    @name = name
    @fishes = []
    @dogs = []
    @cats = []
    @pets = {:fishes => @fishes, :dogs => @dogs, :cats => @cats}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a human."
  end

end
