class Artist < ActiveRecord::Base
    has_many :songs

    def song_count
        puts self.songs.length
        return self.songs.length
    end
end
