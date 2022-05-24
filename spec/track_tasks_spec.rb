require "track_tasks"

RSpec.describe "track_tasks method" do
  context "given an empty string" do
    it "it will return false" do
      result = track_tasks("")
      expect(result).to eq false
    end
  end 
end
