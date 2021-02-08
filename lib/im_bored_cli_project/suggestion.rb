# CLI Controller 

# def testing
#     puts "hello"
#     binding.pry
# end

class Suggestion
     attr_accessor :type, :participants, :random
    # attr_reader :activity, :price, :link, :key, :accessibility
     @@all = []

  def initialize(type, participants, random)
      @type = type
      @participants = participants
      @random = random
       
  end 

  def save
    @@all << self
  end

   def self.all
       @@all
   end 
end

    

    # def initialize(hash)
    #     hash.each do |k,v|
    #         self.send(k, ":#{v}")
    #         binding.pry
    #      @@all << self
    #     end

    #     def save
    #     @@all << self
    #     end

    #     def self.all
    #     @@all
    #     end

    #     def events
    #     @@all.map
    #     end
    # end


