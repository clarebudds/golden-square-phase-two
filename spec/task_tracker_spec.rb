require "todotask_list"

RSpec.describe do
  context "create an empty string" do
    it "returns false" do
    result = todotask_list("")
    expect(result).to eq false
    end
  end

  context "creates a string without include #TODO" do
    it "returns false" do
    result = todotask_list("cook dinner")
    expect(result).to eq false
    end
  end

  context "include a task on your todo list which includes #TODO" do
    it "returns true" do
    result = todotask_list("#TODO")
    expect(result).to eq true
    end
  end
end