require 'count_words'

RSpec.describe "count_words method" do
  context "create an empty string" do
    it "returns a string" do
    result = count_words("")
    expect(result).to eq ""
    end
  end

  context "pass given string into argument" do
    it "gives a sentence in a string" do
    result = count_words("red green blue yellow")
    expect(result).to eq "red green blue yellow"
    end
  end
 
  context "returns a string" do
    it "splits out the string into elements" do
    text = count_words("red green blue yellow")
    result = text.split(" ")
    expect(result).to eq ["red", "green", "blue", "yellow"]
    end
  end

  context "returns sum of elements in string" do
    it "gives sum of elements" do
    text = count_words("red green blue yellow")
    text.split(" ").size
    result = text.split(" ").size
    expect(result).to eq 4
    end
  end
end