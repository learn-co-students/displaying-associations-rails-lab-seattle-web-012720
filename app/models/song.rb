class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def list_view
    if self.artist.name
      listing = self.artist.name + ' - ' + self.title
    else
      listing = 'Unknown artist - ' + self.title
    end
    listing
  end
end
