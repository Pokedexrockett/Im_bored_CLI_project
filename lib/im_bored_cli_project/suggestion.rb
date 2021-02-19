class Suggestion

    attr_accessor :activity, :type, :participants, :price, :link, :key, :accessibility

     @@all = []

    def initialize(hash)
        hash.each do |key, value|
            self.instance_variable_set("@#{key}", value)
        end
        save
    end 

    def random_hash_method(my_hash = {})
        my_hash.each do |k, v|
            puts "#{k}: #{v}"
        end
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

    def print_attributes
        puts "activity: #{activity}"
        puts "type: #{type}"
        puts "participants: #{participants}"
        puts "price: #{price}"
        puts "link: #{link}"
        puts "key: #{key}"
        puts "accessibility: #{accessibility}\n"
        puts
    end

    
    def save
        @@all << self
    end

    def self.all 
        @@all
    end 
end