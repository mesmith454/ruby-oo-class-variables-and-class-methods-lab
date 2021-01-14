
require 'pry'

##helpers 
def GetAmountInArray(array, value)
    count = 0;
    array.each{|item| if item == value then count+=1 end}
    return count
    #counts up items in array if condition is met add one and return final count. Increment helper
end

def GetCountHash(array)
    new_hash = Hash.new #creates new hash
    array.each do |value| 
        if !new_hash.include?(value) then #if value is not included in new hash
            new_hash[value] = GetAmountInArray(array, value) #add to array and increment
        end
    end
    new_hash #return new hash 
end

#######
class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_reader :name, :artist, :genre

    def initialize(song_name, artist, genre)
        @name = song_name
        @artist = artist
        @genre = genre

        @@artists << artist
        @@genres << genre
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq #uniq returns unique values only
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        GetCountHash(@@genres) 
    end

    def self.artist_count
        GetCountHash(@@artists)
    end
end

#     @@count = 0
#     @@artists = []
#     @@genres= []   
    
#     attr_accessor :name, :artist, :genre

#     def initialize(name, artist, genre)
#         @name = name
#         @artist = artist
#         @genre = genre
        
#         @@count += 1
#         @@artists << artist
#         @@genres << genre
#     end
#     def self.count
#         @@count
#     end
#     def self.artist
#         @artist
#     end
#     def self.genre
#         @genre
#     end
#     def self.genre_count
#         genre_hash = {}
#         @@genres.each do |genre_type|
#             if genre_hash[genre_type]
#                 genre_hash[genre_type] += 1
#             else
#                 genre_hash[genre_type] = 1
#             end
#         end
#         genre_hash
#     end
#     def self.artists
#         @@artists.uniq
#     end
#     def self.genres
#         @@genres.uniq
#     end
#     def self.artist_count
#         artist_hash = @artist. do |artist_name|
#             if artist_hash[artist_name]
#                 artist_hash[artist_name] += 1
#             else
#                 artist_hash[artist_name] = 1
#             end
#         end
#         artist_hash
#     end
# end