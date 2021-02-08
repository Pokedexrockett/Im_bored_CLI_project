# CLI Controller 

# def testing
#     puts "hello"
#     binding.pry
# end

class Suggestion
    # attr_accessor :type, :participants 
    # attr_reader :activity, :price, :link, :key, :accessibility
    @@all = []

  def initialize(type, participants)
      @type = type
      @participants = participants
      @@all << self
  end 

  def self.all
      @@all
  end 

    # @@all = []
    # @all = []

    # class << self
    #     attr_accessor :all
    # end

    # def initialize
    #     self.class.all << self
    # end

    # def instances
    #     self.class.all
    # end

    # def initialize(hash)
    #     hash.each do |k,v|
    #         self.send(k, ":#{v}")
    #         binding.pry
    #         @type = type
    #     @participants = participants
    #     @activity = []
    #     @price = price
    #     @key = key
    #     @accessibility = accessibility
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

end

# def list_events
#     # binding.pry
#     self.all.map #{ |suggestion| suggestion.object_id } #{|event| [:activity, :type, :participants, :price, :link, :key, :accessibility]}
# end

