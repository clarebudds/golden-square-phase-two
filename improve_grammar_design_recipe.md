Reading Time Method Design Recipe

1. Describe the Problem
<!-- Put or write the user story here. Add any clarifying notes you might have. -->
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and 
ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature
<!-- Include the name of the method, its parameters, return value, and side effects. -->

is_correct = check_grammar(text)

# text is a string with words in it
# is_correct is a boolean depending on whether it checks out

3. Create Examples as Tests
<!-- Make a list of examples of what the method will take and return. -->

#1 check_grammar(" ")
# => fail "Not a sentence."

#2 check_grammar("Hello, I am Clare.")
# => true

#3 check_grammar("Hello, I am Clare")
# => false

#4 check_grammar("hello, I am Clare.")
# => false

#5 check_grammar("HELLO, I am Clare.")
# => true

#6 check_grammar("Hello, I am Clare!")
# => true

#7 check_grammar("Hello, I am Clare?")
# => true

#8 check_grammar("Hello, I am Clare,")
# => false


4. Implement the Behaviour
<!-- After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour. -->


