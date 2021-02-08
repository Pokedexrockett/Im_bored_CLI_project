# This is to test your API to make sure it works. use 'ruby lib/im_bored/api.rb' to test
# resp = HTTParty.get("http://www.boredapi.com/api/")
# puts resp



class Api
    attr_accessor :url
    def initialize()
        @url = "http://www.boredapi.com/api/" #does not work for some reason. returns empty. works fine with test in im-bored.???
    end


    def event_by_random(random)
        # http://www.boredapi.com/api/activity/
        req_url="#{@url}#{random}/"
        # 'puts req_url' # Test to make sure I still get the right URL
        data = HTTParty.get(req_url) 
        # 'puts data' #Test for endpoint
        # # binding.pry
            #  puts data
            # hash = {
            #     activity: data["activity"],
            #     type: data["type"],
            #     participants: data["participants"],
            #     price: ["price"],
            #     link: ["link"],
            #     key: ["key"],
            #     accessibility: ["accessibility"]
        puts data
            

        #     event = Suggestion.new(hash)
        #     puts event
        # end
    end

    def event_by_type(type)
        # http://www.boredapi.com/api/activity/
        req_url="#{@url}activity?type=#{type}"
        puts req_url # Test to make sure I still get the right URL
        data = HTTParty.get(req_url) 
        puts data
    end

    def event_by_participants(participants)
        # http://www.boredapi.com/api/activity/
        req_url="#{@url}activity?participants=#{participants}"
        # puts req_url # Test to make sure I still get the right URL
        data = HTTParty.get(req_url) 
        puts data
    end

end



# http://www.boredapi.com/api/activity/ # Find an event totally randomly
# http://www.boredapi.com/api/activity?key=:key # Find an event based on key
# A unique numeric id [1000000, 9999999]
# http://www.boredapi.com/api/activity?type=:type # Find a random event with a given type
# Type of the activity ["education", "recreational", "social", "diy", "charity", "cooking", "relaxation", "music", "busywork"]
# http://www.boredapi.com/api/activity?participants=:participants # Find a random event with a given number of participants
# The number of people that this activity could involve [0, n]
# http://www.boredapi.com/api/activity?price=:price # Find an event with a specified price
# A factor describing the cost of the event with zero being free [0, 1]
# http://www.boredapi.com/api/activity?accessibility=:accessibility # Find an event with a specified price in an inclusively constrained range
# A factor describing how possible an event is to do with zero being the most accessible [0.0, 1.0]
# http://www.boredapi.com/api/activity?accessibility=1 # Find a price in an inclusively constrained range
# http://www.boredapi.com/api/activity?minaccessibility=:minaccessibility&maxaccessibility=:maxaccessibility # Find an event with a specified accessibility in an inclusively constrained range





