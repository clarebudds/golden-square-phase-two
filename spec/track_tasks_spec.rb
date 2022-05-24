require "track_tasks"

RSpec.describe "track_tasks method" do
  context "given an empty string" do
    it "will return false" do
      result = track_tasks("")
      expect(result).to eq false
    end
  end

  context "given a string which doesn't include #TODO" do
    it "will return false" do
      result = track_tasks("cook dinner")
      expect(result).to eq false
    end
  end

  context "given a string which includes #TODO" do
  it "will return true" do
    result = track_tasks("#TODO cook dinner")
    expect(result).to eq true
  end
end
end