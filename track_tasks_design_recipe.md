Track Tasks Method Design Recipe

1. Describe the Problem
<!-- Put or write the user story here. Add any clarifying notes you might have. -->
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.


2. Design the Method Signature
<!-- Include the name of the method, its parameters, return value, and side effects. -->

track_tasks(text)

# text is a string of words
# the method will check if the string of text includes #TODO which is either yes or no
# the method will return a boolean: true or false

3. Create Examples as Tests
<!-- Make a list of examples of what the method will take and return. -->

#1 todotask_list(" ")
# => false

#2 todotask_list("cook dinner")
# => false

#3 todotask_list("#TODO cook dinner")
# => true


4. Implement the Behaviour
<!-- After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour. -->


