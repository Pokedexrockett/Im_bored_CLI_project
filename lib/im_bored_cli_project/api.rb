
class Api
    attr_accessor :url



    def initialize()
        @url = "http://www.boredapi.com/api/" 
    end

    def event_by_random()
        # http://www.boredapi.com/api/activity/
        req_url="#{@url}activity/"
        data = HTTParty.get(req_url)
            random_hash = {
                activity: data["activity"],
                type: data["type"],
                participants: data["participants"],
                price: data["price"],
                link: data["link"],
                key: data["key"],
                accessibility: data["accessibility"] 
            }
            
            random_event_class = Suggestion.new(random_hash)
            random_event_class.random_hash_method(random_hash)

    end

    def event_by_type(type)
        # http://www.boredapi.com/api/activity?type=:type
        req_url="#{@url}activity?type=#{type}"
        data = HTTParty.get(req_url) 
        type_hash = {
            activity: data["activity"],
            type: data["type"],
            participants: data["participants"],
            price: data["price"],
            link: data["link"],
            key: data["key"],
            accessibility: data["accessibility"] 
        }
        type_class = Suggestion.new(type_hash) 
        type_class.get_type(type_hash)

    end

    def event_by_participants(participants)
        # http://www.boredapi.com/api/activity?participants=:participants
        req_url="#{@url}activity?participants=#{participants}"
        data = HTTParty.get(req_url) 
        participants_hash = {
            activity: data["activity"],
            type: data["type"],
            participants: data["participants"],
            price: data["price"],
            link: data["link"],
            key: data["key"],
            accessibility: data["accessibility"] 
        }
        participant_class = Suggestion.new(participants_hash) 
        participant_class.get_participants(participants_hash)
        # participants_hash.each do |k, v|
        #     puts "#{k}: #{v}"
          
        #      end
        #puts data
    end

end #class API end


