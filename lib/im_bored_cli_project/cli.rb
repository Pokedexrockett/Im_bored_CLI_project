
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
            puts "To quit, type 'exit'."
            puts "How would you like to generate your event?"
                input = gets.strip.downcase

                if input == "type"

                puts "Please select education, recreational, social, diy, charity, cooking, relaxation, music, or busywork."
                input = gets.strip.downcase
                api.event_by_type(input)
                puts
                end
            

                if input == "participants"

                puts "Please enter your number of participants."
                input = gets.strip.downcase
                api.event_by_participants(input)
                puts
                end

                if input == "random"

                puts "Let's roll those dice!"
                api.event_by_random("activity")
                puts
                end
               
                
              if input == "exit"

                puts "Take care!"
                exit
            end     
        end
    end
end


