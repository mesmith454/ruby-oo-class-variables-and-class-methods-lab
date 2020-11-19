
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
        @@artist.uniq
    end
    def self.genre
        @@genre.uniq
    end
    def genre_count
        genre_hash = {}
        @@genres.each do |genre_type|
            if genre_hash[genre_type]
                genre_hash[genre_type] += 1
            else
                genre_hash[genre_type] = 1
            end
        end
        genre_hash
    end
end