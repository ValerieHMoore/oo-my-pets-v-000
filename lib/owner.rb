require 'pry'

require_relative 'fish'
require_relative 'cat'
require_relative 'dog'

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

  def buy_fish(name)
     @fishes << Fish.new(name)
  end
  
  def buy_cat(name)
     @cats << Cat.new(name)
  end
  
  def buy_dog(name)
     @dogs << Dog.new(name)
  end
  
  def walk_dogs
    @dogs.each do |dog| dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @cats.each do |cat| cat.mood = "happy"
    end
  end
  
  def feed_fish
    @fishes.each do |fish| fish.mood = "happy"
    end
  end
  
  def sell_pets
    @pets.each do |k, v|
      v.each do |pet|
        pet.mood = "nervous"
      end
      @fishes.clear
      @dogs.clear
      @cats.clear
      @pets = {}
    end
  end
  
end
