CLI Controller 


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