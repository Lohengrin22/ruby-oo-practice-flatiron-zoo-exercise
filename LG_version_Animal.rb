##joiner method##

class Animal

    attr_accessor :species, :origins, :zoo, :city

    @@all = []

    def initialize(species, origins, zoo, city)
        @species = species
        @origins = origins
        @zoo = zoo
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def zoos
        Zoo.all.select{|zoo| zoo == self.zoo }
    end
    #array of zoo instances that the animal can be found in.

    def cities
        City.all.select{|city| city == self.city}
    end
    # array of city instances that the animal can be found in.

    def zoo_names
        Zoo.all.map{|zoo| zoo.zoo_name}
    end
    #array with only zoo names

end

#  - An `animal` should be instantiated with the species (e.g. "Lion", "Koala", "Lynx") and its origins (e.g. "Australia", "Asia", "Europe"). 
# - `Animal#species` should return the species of the animal.
# - `Animal#origins` should return the species of the animal.
# - `Animal.all` should return an array of all the animal instances.
# - `Animal#zoos` should return all the zoo instances that the animal can be found in.
# - `Animal#cities` should return all the city instances that the animal can be found in.
# - `Animal#zoo_names` should return an array with only zoo names.
