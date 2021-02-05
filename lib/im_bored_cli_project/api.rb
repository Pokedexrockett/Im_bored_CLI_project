# This is to test your API to make sure it works. use 'ruby lib/im_bored/api.rb' to test
# resp = HTTParty.get("http://www.boredapi.com/api/activity/")
# puts resp



class Api
    attr_accessor :url
    def initialize(url)
        @url = "http://www.boredapi.com/api/" #does not work for some reason. returns empty. works fine with test in im-bored.???
    end


    def get_a_random_event(surprise)
        # http://www.boredapi.com/api/activity/
        req_url="#{@url}#{surprise}/"
        # puts req_url # Test to make sure I still get the right URL
        data = HTTParty.get(req_url) 
        # puts data #Test for endpoint
        suggestion_hash = {
            type: data["type"],
            participants: data["participants"],
            price: data["price"],
            activity: data["activity"]
            # random: data["activity"]["accessibility"]["type"]["participants"]["price"]["link"]["key"]
            }
            
        suggestion = Suggestion.new(suggestion_hash)
        # binding.pry
            puts suggestion.activity
    end
end



# api = Api.new("https://www.boredapi.com/api/")

# surprise = api.activity_by_total_random("activity")

# puts surprise


# http://www.boredapi.com/api/activity/ # Find an activity totally randomly
# http://www.boredapi.com/api/activity?key=:key # Find an activity based on key
# http://www.boredapi.com/api/activity?type=:type # Find a random activity with a given type
# http://www.boredapi.com/api/activity?participants=:participants # Find a random activity with a given number of participants
# http://www.boredapi.com/api/activity?price=:price # Find an activity with a specified price
# http://www.boredapi.com/api/activity?accessibility=:accessibility # Find an event with a specified price in an inclusively constrained range
# http://www.boredapi.com/api/activity?accessibility=1 # Find a price in an inclusively constrained range
# http://www.boredapi.com/api/activity?minaccessibility=:minaccessibility&maxaccessibility=:maxaccessibility # Find an event with a specified accessibility in an inclusively constrained range





