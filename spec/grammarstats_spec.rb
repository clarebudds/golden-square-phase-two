require "grammarstats.rb" 

RSpec.describe GrammarStats do
  it "returns true if sentence starts with a capital and ends with a punctuation-ending mark" do
    grammar = GrammarStats.new
    expect(grammar.check("This is a test.")).to eq true
  end 
  
  it "returns false if sentence doesn't start with a capital and ends with a punctuation-ending mark" do
      grammar = GrammarStats.new
      expect(grammar.check("this is a test.")).to eq false
  end 

  it "returns false if sentence starts with a capital and doesn't end with a punctuation-ending mark" do
    grammar = GrammarStats.new
    expect(grammar.check("This is a test")).to eq false
  end 

  it "returns '50' as an integer when passed two sentences, 
  and one sentence check is true, whilst the other is false" do
    grammar = GrammarStats.new
    grammar.check("This is our first test returning true.")
    grammar.check("this is our second test returning false.")
    expect(grammar.percentage_good).to eq 50  
  end 
end