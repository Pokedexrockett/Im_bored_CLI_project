class Suggestion

     @@all = []

    def initialize()
    end 

    def random_hash_method(my_hash = {} )
        my_hash.each do |k, v|
            puts "#{k}: #{v}"
        end
         @@all << self
    end # random_hash_method

    def get_type(my_type_hash = {})
        my_type_hash.each do |k, v|
            puts "#{k}: #{v}"
        end # type_hash-end of the do iterator

    end


    def get_participants(my_participants_hash = {})
        my_participants_hash.each do |k, v|    
            puts "#{k}: #{v}"
        end # participants_hash_method the do iterator
    end

    
    # def save
    #     @@all << self
    # end

    # def self.all
    #     @@all
    # end 
end