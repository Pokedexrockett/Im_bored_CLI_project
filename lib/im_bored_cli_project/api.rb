
class Api
    attr_accessor :url



    def initialize()
        @url = "http://www.boredapi.com/api/" 
    end

    def event_by_random(random)
        # http://www.boredapi.com/api/activity/
        req_url="#{@url}#{random}/"
        data = HTTParty.get(req_url) 
        puts data
        # if data.is_a?(Hash)
        #     random_event
    end

    def event_by_type(type)
        # http://www.boredapi.com/api/activity?type=:type
        req_url="#{@url}activity?type=#{type}"
        data = HTTParty.get(req_url) 
        puts data
    end

    def event_by_participants(participants)
        # http://www.boredapi.com/api/activity?participants=:participants
        req_url="#{@url}activity?participants=#{participants}"
        data = HTTParty.get(req_url) 
        puts data
    end
end


