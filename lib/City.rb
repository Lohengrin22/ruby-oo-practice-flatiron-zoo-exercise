class City

    attr_accessor :city_name, :country
    @@all = []

    def initialize(city_name, country)
        @city_name = city_name
        @country = country
        @@all << self
    end

    def self.all
        @@all
    end

    def zoos
       #zoo_animals = Animal.all.select{|animal| animal.city == self}
       #zoo_animals.collect{|animal| animal.zoo}
    end
    #array of all the zoo instances that a specific instance of a city has

    def my_animals
        Animal.all.select{|animal| animal.city == self}
    end

    def animals
        my_animals.map{|animal| animal.species}.uniq
    end
    #array of all the unique animal species that a specific instance of a city has

    def animal_number
        animals.count.to_i
    end
    #integer that indicates the number of different animal species a city has in total

    def self.find_by_country(location)
        self.all.select{|city| city.country == location}
    end
    # array of all the cities within that country.

    def self.most_animals
        self.all.map{|city| city.animal_number}.max
    end
    # instance of a city that in general has the most animals - not unique

end



# - A `city` should be initialized with a `name` and a `country`, which should both be passed as strings.
# - `City#country` should return the location of the city instance.
# - `City#name` should return the name of the city instance.
# - `City.all` should return an array of all the city instances.
# - `City#zoos` should return all the zoos that a specific instance of a city has.
# - `City#animals` should return all the unique animal species that a specific instance of a city has.
# - `City#animal_number` should return an integer that indicates the number of different animal species a city has in total.
# - `City.find_by_country` should take in a location as an argument and return an array of all the cities within that country.
# - `City.most_animals` should return an instance of a city that in general has the most animals (not unique -- so it's fine if two zoos in NYC have lions).