require 'pry'
class Dog
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all 
        @@all 
    end

    #this method allows us to assign a dog object to a specific toy.
    # def save_toy(toy)
    #     toy.dog = self
    # end

    def bark
        puts "Hello, my name is #{self.name}"
    end 

end

class Toy
    # if I belong to another class, i have to have that other class's name in my attr_accesor
   attr_accessor :name , :dog

   #setter 
   # def dog=(dog)
#    @dog = dog
# end

#getter
# def dog
# @dog 
# end
@@all = []

def initialize(name,dog)
     @name = name
     @dog = dog 
     @@all << self 
end

   def self.all 
     @@all 
   end
end


fido = Dog.new("fido")
sparky = Dog.new("Sparky")

bone = Toy.new("Bone",sparky)
squeeky = Toy.new("Squeeky",fido)
binding.pry
1
