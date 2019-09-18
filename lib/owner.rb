require 'pry'

class Owner
  
  @@all = []

     attr_accessor :name, :pets
    
    attr_reader :species

    def initialize(species)
      # @name = name
      @@all << self
      @species = species
      @pets = {:fishes => [], :dogs => [], :cats => []}
    end

    def self.all
      @@all
    end

    def self.count
      @@all.length
    end

    def self.reset_all
      @@all.clear
    end

    def say_species
      "I am a #{@species}."
    end

    def buy_fish(name)
      fish = Fish.new(name)
      @pets[:fishes] << fish
      # binding.pry
    end

    def buy_cat(name)
      cat = Cat.new(name)
      @pets[:cats] << cat
    end 

    def buy_dog(name)
      dog = Dog.new(name)
      @pets[:dogs] << dog
    end

    def walk_dogs
      @pets[:dogs].each do |dog|
        dog.mood = "happy"
      end
    end

    def play_with_cats
      @pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      @pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets
      @pets.each do |species, array|
        array.each do |animal|
        animal.mood = "nervous"
      #binding.pry
          end
          array.clear
        end
    end

    def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    end

  
end