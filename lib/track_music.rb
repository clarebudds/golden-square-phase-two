class TrackMusic
  def initialize
    @tracks = []
  end
  
  def list 
    return @tracks
  end

  def add(track)
    @tracks << track
  end
end