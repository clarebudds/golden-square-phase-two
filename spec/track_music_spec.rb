require "track_music"

RSpec.describe TrackMusic do
  context "given no music track" do
    it "return nothing, has an empty list" do
      track_music = TrackMusic.new
      expect(track_music.list).to eq []
    end
  end

  context "given a track" do
    it "includes the music track in the list" do
      track_music = TrackMusic.new
      track_music.add("Spaceman") 
      expect(track_music.list).to eq ["Spaceman"]
    end
  end

  context "given multiple tracks" do
    it "includes each music track in the list" do
      track_music = TrackMusic.new
      track_music.add("Spaceman") 
      track_music.add("Superstition") 
      expect(track_music.list).to eq ["Spaceman", "Superstition"]
    end
  end
end




