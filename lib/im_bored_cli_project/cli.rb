
class Cli

    def run
        puts "Welcome to the I'm Bored app!"
        api = Api.new()
        # puts "Ready to have some fun?"
        input = nil
        while input != "exit"
            puts "How would you like to generate your event?"
            puts "You can generate by type, number of participants, or random!"
            puts "Types include education, recreational, social, diy, charity, cooking, relaxation, music, or busywork."
            puts "Participants can range from 0-any number you like."
            # puts "Price ranges from 0.0-1.0 with 0.0 being free."
            puts "To generate a totally random event, type 'random'"
            puts "To quit, type 'exit'."
            puts "How would you like to generate your event?"
                input = gets.strip.downcase

                case input

                when "type"
                puts "Please select education, recreational, social, diy, charity, cooking, relaxation, music, or busywork."
                input = gets.strip.downcase
                api.event_by_type(input)
                puts "How does that sound?"
             when "participants"
                puts "Please enter your number of participants."
                input = gets.strip.downcase
                api.event_by_participants(input)
            #  when "price"
            #     puts "Please enter your price range."
            #     input = gets.strip.downcase
            #     api.event_by_participants(input)
             when "random"
                puts "Let's roll those dice!"
                api.event_by_random("activity")
                when "exit"
                puts "Take care!"
                exit
            end     
        end
    end
end


# class MusicLibraryController
#     def initialize(path="./db/mp3s")
#         MusicImporter.new(path).import

#     end

#     def call

#     input = ""
#         while input != "exit"
#         puts "Welcome to your music library!"
#         puts "To list all of your songs, enter 'list songs'."
#         puts "To list all of the artists in your library, enter 'list artists'."
#         puts "To list all of the genres in your library, enter 'list genres'."
#         puts "To list all of the songs by a particular artist, enter 'list artist'."
#         puts "To list all of the songs of a particular genre, enter 'list genre'."
#         puts "To play a song, enter 'play song'."
#         puts "To quit, type 'exit'."
#         puts "What would you like to do?"
#             input = gets.strip 

#             case input

#             when "list songs"
#                 list_songs
#             when "list artists"
#                 list_artists
#             when "list genres"
#                 list_genres
#             when "list artist"
#                 list_songs_by_artist
#             when "list genre"
#                 list_songs_by_genre
#             when "play song"
#                 play_song
#             end
#         end
#     end

#     def list_songs
#         Song.all.sort{|a,b| a.name <=> b.name }.each_with_index{|song, index| puts "#{index + 1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"}
#     end

#     def list_artists
#         Artist.all.sort{|a,b| a.name <=> b.name }.each_with_index{|artist, index| puts "#{index + 1}. #{artist.name}"}
#     end

#     def list_genres
#         Genre.all.sort{|a,b| a.name <=> b.name }.each_with_index{|genre, index| puts "#{index + 1}. #{genre.name}"}
#     end

#     def list_songs_by_artist
#         puts "Please enter the name of an artist:"
#         input = gets.strip
#         if artist = Artist.find_by_name(input)
#             artist.songs.sort{|a,b| a.name <=> b.name }.each_with_index{|song, index| puts "#{index + 1}. #{song.name} - #{song.genre.name}"}
#     end
# end

# def list_songs_by_genre
#     puts "Please enter the name of a genre:"
#     input = gets.strip
#     if genre = Genre.find_by_name(input)
#         genre.songs.sort{|a,b| a.name <=> b.name }.each_with_index{|song, index| puts "#{index + 1}. #{song.artist.name} - #{song.name}"}
# end
# end

# def play_song
#     puts "Which song number would you like to play?"
#     input = gets.strip
#     if (1..Song.all.length).include?(input.to_i)
#         song = Song.all.sort{|a,b| a.name <=> b.name }[input.to_i - 1]
#         puts "Playing #{song.name} by #{song.artist.name}"
# end
# end

# end


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