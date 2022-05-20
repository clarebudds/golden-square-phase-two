require 'make_snippet'

RSpec.describe "make_snippet method" do
 it "returns an empty string" do
    result = make_snippet("")
    expect(result).to eq""
 end

 context "given a string of six words" do
   it "returns the first five words and then a ..." do
    result = make_snippet("one two three four five six")
    expect(result).to eq "one two three four five..."
    end
  end
end


