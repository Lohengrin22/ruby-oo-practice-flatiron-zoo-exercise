
class Zoo

    attr_reader :address
    attr_accessor :zoo_name
    @@all = []

    def initialize(zoo_name, address)
        @zoo_name = zoo_name
        @address = address
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        my_animals = Animal.all.select{|animal| animal.zoo == self}
        my_animals.collect{|animal| animal.species}.uniq
    end

    def self.find_by_city(city)
        self.all.select{|zoo| zoo.address == city}
    end
end


# - A `zoo` should be initialized with a name and address, which should be passed as string. Keep in mind that the Zoo's name should be able to change, but its address can't.
# - `Zoo#name` should return the name of the zoo instance. 
# - `Zoo#address` should return the address of the zoo instance.
# - `Zoo.all` should return an array of all the zoo instances.
# - `Zoo#animals` should return all the unique animal species  that a specific instance of a zoo has.
# - `Zoo.find_by_city` should take in an argument of a string of a city and return an array of all the zoos in that city.
