#TODO get random event - done
#TODO get random event by type
#TODO get random event based off of number of participants
#TODO get random event based on price
#TODO get random event based on accessibility
#TODO get random event based on key







class Cli

    def run
        puts "Welcome to the I'm Bored app!"
        suggestion_api = APi.new()
        puts "Ready to have some fun?"
        input = nil
        while input != "exit"
            puts "How would you like to generate your event?"

    end
end


# class ImBored::CLI

#     def call
#      make_suggestion
#      thoughts
#     #  goodbye
#     end

#     def make_suggestion
#         puts "Try this!"
#         @suggestions = ImBored::Suggestion.sample
#     end

#     def thoughts
#         input = nil
#             while input != "exit"
#                 puts "How does that sound? If you're happy, type exit."

#                 input = gets.strip
#                 case input
#                 when "Good"
#                 puts "Awesome! Enjoyand see you next time!"
#                 exit
#                 when "Meh"
#                 puts <<-DOC.gsub(/\s+/, " ").strip
#                 activity:Go to a nail salon,
#                 type:relaxation,
#                 participants:1,
#                 price:0.4,
#                 link:,
#                 key:7526324,
#                 DOC
#             end    
#         end
#     end

#     # def goodbye
#     #     puts "See you next time! Have fun!"
#     # end
# end


#cexecutes it all
# CLI Controller 