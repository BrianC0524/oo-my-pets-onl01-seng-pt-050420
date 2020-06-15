class Owner
  attr_accessor :mood
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    save
    
  end
  
  def say_species
    
    "I am a #{species}."
    
  end
  
  def save
    
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
  
  def add_cats(cat)
    @cats << self.cat
  end
  
  def cats
    
    Cat.all.select {|cat| cat.owner == self}
    
  end
  
  def dogs
    
    Dog.all.select {|dog| dog.owner == self}
    
  end
  
  def buy_cat(cat)
    
    @cats << Cat.new(cat, self)
    
  end
  
  def buy_dog(dog)
    
    @dogs << Dog.new(dog, self)
    
  end
  
  def walk_dogs
    
    Dog.all.each {|dog| dog.mood = "happy"}
    
  end
  
  def feed_cats
    
    Cat.all.each {|cat| cat.mood = "happy"}
    
  end
  
end