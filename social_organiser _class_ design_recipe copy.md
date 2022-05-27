Social Organiser Class Design Recipe

1. Describe the Problem
<!-- Put or write the user story here. Add any clarifying notes you might have. -->

As a user
So that I can have a nice social life
I want to enter what evenings my friends are free
And then check who is free on a particular evening

As a user
So that I can have a nice social life
I want to enter what evenings my friends are free
And then check which evening the most people are free
When I am also free

2. Design the Class Interface
<!-- Include the initializer and public methods with all parameters and return values. -->

class SocialOrganiser
  def enter_evening_when_friend_is_free(friend, evening)
<!-- #friend is a string (name of a friend)
<!-- # evening is a Date object -->
<!-- # doesn't return anything as just going to mark an evening when friend is free --> 
  end

  def enter_evening_when_I_am_free(evening)
  <!-- # evening is a Date object -->
  <!-- # doesn't return anything -->
  end

  def list_who_is_free_on_evening(evening)
  <!-- # evening is a Date object -->
  <!-- # returns a list of friends (a list of strings) who are free on this evening -->
  end

  def get_evening_most_people_are_free_and_myself
  <!-- # returns the evening (a Date object) when most friends and myself are free -->
  end
end


3. Create Examples as Tests
<!-- Make a list of examples of how the class will behave in different situations. -->

#1
organiser = SocialOrganiser.new
organiser.enter_evening_when_friend_is_free("David", Date.today)
organiser.enter_evening_when_friend_is_free("Anna", Date.today)
organiser.list_who_is_free_on_evening(Date.today) => ["David", "Anna"]
<!-- #both friends who are free today, when call method result will be David & Anna-->

#2
organiser = SocialOrganiser.new
organiser.enter_evening_when_friend_is_free("David", Date.today)
organiser.enter_evening_when_friend_is_free("Anna", Date.new(2022, 05, 05))
organiser.list_who_is_free_on_evening(Date.today) => ["David"]
<!-- #one friend is free today, other friend is free on another random date. When call method result will be David-->

#3
organiser = SocialOrganiser.new
organiser.enter_evening_when_friend_is_free("David", Date.today)
organiser.enter_evening_when_friend_is_free("Anna", Date.new(2022, 05, 05))
organiser.list_who_is_free_on_evening(Date.new(2022, 05, 06)) => []
<!-- #date that no one is available-> -->

#4
organiser = SocialOrganiser.new
organiser.enter_evening_when_friend_is_free("David", Date.today)
organiser.enter_evening_when_friend_is_free("Joe", Date.today)
organiser.enter_evening_when_friend_is_free("Anna", Date.new(2022, 05, 05))
organiser.enter_evening_when_I_am_free(Date.new(2022, 05, 05))
organiser.get_evening_most_people_are_free_and_myself => (Date.new(2022, 05, 05))
<!-- #I am free on a date and so is one of my friends)-> -->

#5
organiser = SocialOrganiser.new
organiser.enter_evening_when_friend_is_free("David", Date.today)
organiser.enter_evening_when_friend_is_free("Joe", Date.today)
organiser.enter_evening_when_friend_is_free("Anna", Date.new(2022, 05, 05))
organiser.enter_evening_when_I_am_free(Date.new(2022, 05, 04))
organiser.get_evening_most_people_are_free_and_myself => nil
<!-- #I am free on a date but none of my friends are)-->

<!-- Encode each example as a test. You can add to the above list as you go.  -->

4. Implement the Behaviour
<!-- After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour. -->
