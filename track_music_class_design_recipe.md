Track Music Class Design Recipe

1. Describe the Problem
<!-- Put or write the user story here. Add any clarifying notes you might have. -->

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

<!-- Don't worry about user input & output here. -->

2. Design the Class Interface
<!-- Include the initializer and public methods with all parameters and return values. -->

class TrackMusic
  def initializer
  end

  def add(track) 
  <!-- # track is a string representing a music track I've listened to -->
  <!-- # returns nothing -->
  end

  def list
    <!-- # returns a list of the music tracks added as strings -->
  end

end 


3. Create Examples as Tests
<!--Make a list of examples of how the class will behave in different situations. -->

#1
track_music = TrackMusic.new
track_music.list # => []
<!-- #if no music track inputted it will be an empty list-->

#2
track_music = TrackMusic.new
track_music.add("Spaceman") 
track_music.list # => ["Spaceman"]
<!-- #if added a music track will see the track in the list -->

#3
track_music = TrackMusic.new
track_music.add("Spaceman") 
track_music.add("Superstition") 
track_music.list # => ["Spaceman", "Superstition"]
<!-- #if added multiple music tracks will see all the tracks in the list -->

<!-- Encode each example as a test. You can add to the above list as you go.  -->

4. Implement the Behaviour
<!-- After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour. -->
