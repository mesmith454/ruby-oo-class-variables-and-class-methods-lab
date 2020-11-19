
class Song
    @@count = 0
    @@artist = []
    @@genre = []   
    
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1
        @@artist << artist
        @@genre << genre
    end
    def self.count
        @@count
    end
    def self.artist
        @@artist
    end
    def self.genre
        @@genre
    end
    def self.genre_count
        genre_hash = {}
        @@genre.each do |genre_type|
            if genre_hash[genre_type]
                genre_hash[genre_type] += 1
            else
                genre_hash[genre_type] = 1
            end
        end
        genre_hash
    end
    def self.artist_count
        artist_hash = {}
        @@artist.each do |artist_name|
            if artist_hash[artist_name]
                artist_hash[artist_name] += 1
            else
                artist_hash[artist_name] = 1
            end
        end
        artist_hash
    end
end