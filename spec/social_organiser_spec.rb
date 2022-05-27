require "social_organiser"

RSpec.describe SocialOrganiser do
  it "lists the two friends who are free on the same evening" do
    organiser = SocialOrganiser.new
    organiser.enter_evening_when_friend_is_free("David", Date.today)
    organiser.enter_evening_when_friend_is_free("Anna", Date.today)
    expect(organiser.list_who_is_free_on_evening(Date.today)).to eq(["David", "Anna"])
  end

  it "lists the only friend who is free today but not the other friend" do
    organiser = SocialOrganiser.new
    organiser.enter_evening_when_friend_is_free("David", Date.today)
    organiser.enter_evening_when_friend_is_free("Anna", Date.new(2022, 05, 05))
    expect(organiser.list_who_is_free_on_evening(Date.today)).to eq(["David"])
  end

  it "returns an empty array if no one is available on that date" do
    organiser = SocialOrganiser.new
    organiser.enter_evening_when_friend_is_free("David", Date.today)
    organiser.enter_evening_when_friend_is_free("Anna", Date.new(2022, 05, 05))
    expect(organiser.list_who_is_free_on_evening(Date.new(2022, 05, 06))).to eq([])
  end

  it "get the evening on which Anna is free" do
    organiser = SocialOrganiser.new
    evening_anna_is_free = Date.new(2022, 05, 05)
    organiser.enter_evening_when_friend_is_free("David", Date.today)
    organiser.enter_evening_when_friend_is_free("Joe", Date.today)
    organiser.enter_evening_when_friend_is_free("Anna", evening_anna_is_free)
    organiser.enter_evening_when_I_am_free(evening_anna_is_free)
    expect(organiser.get_evening_most_people_are_free_and_myself).to eq(evening_anna_is_free)
  end

  it "returns nil if none of my friends are available on the same evening as me" do
    organiser = SocialOrganiser.new
    organiser.enter_evening_when_friend_is_free("David", Date.today)
    organiser.enter_evening_when_friend_is_free("Joe", Date.today)
    organiser.enter_evening_when_friend_is_free("Anna", Date.new(2022, 05, 05))
    organiser.enter_evening_when_I_am_free(Date.new(2022, 05, 04))
    expect(organiser.get_evening_most_people_are_free_and_myself).to eq(nil)
  end
end