
class Cli 

    def run
        puts "Welcome to the I'm Bored app!"
        api = Api.new()
        input = nil
        while input != "exit"
            puts "How would you like to generate your event?"
            puts "You can generate by type, number of participants, or random!"
            puts "Types include education, recreational, social, diy, charity, cooking, relaxation, music, or busywork."
            puts "Participants can range from 0-5 number you like."
            puts "To generate a totally random event, type 'random'"
            puts "To see all events made so far, type 'events'."
            puts "To quit, type 'exit'."

                input = gets.strip.downcase

                if input == "type"
                puts
                puts "Please select education, recreational, social, diy, charity, cooking, relaxation, music, or busywork."
                input = gets.strip.downcase
                puts
                x = api.event_by_type(input)
                
                puts
                end
            

                if input == "participants"
                puts
                puts "Please enter your number of participants."
                input = gets.strip.downcase
                puts
                api.event_by_participants(input)
                puts
                end

                if input == "random"
                puts
                puts "Let's roll those dice!"
                puts
                api.event_by_random()
                puts
                end

                if input == "events"
                puts
                puts "Here are your created events"
                puts
                #binding.pry
                 Suggestion.all.each do |event| 
                    event.print_attributes
                    
                    end
                end
                
                if input == "exit"
                puts
                puts "Take care!"
                puts
                exit
                end     

        end
    end
    
end



