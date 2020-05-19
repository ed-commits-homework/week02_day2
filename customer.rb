class Customer
    attr_accessor :name, :wallet, :pets

    def initialize(name, wallet)
        @name = name
        @wallet = wallet
        @pets = []
    end

    def pet_count()
        return @pets.size()
    end

    def add_pet(pet)
        @pets << pet
    end

    def get_total_value_of_pets()
        return @pets.sum{|pet| pet.price}
    end
end
