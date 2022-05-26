Phone Numbers Class Design Recipe

1. Describe the Problem
<!-- Put or write the user story here. Add any clarifying notes you might have. -->

As a user
So that I can keep track of my phone numbers
I want to keep a record of all phone numbers I use in my entries

2. Design the Class Interface
<!-- Include the initializer and public methods with all parameters and return values. -->

class PhoneBook
  def initializer
  end

  def extract_numbers(text) 
  <!-- # text is a string representing a journal entry  -->
  # returns nothing
  end

  def list
    <!-- # returns a list of strings representing phone numbers -->
  end
end 


3. Create Examples as Tests
<!-- Make a list of examples of how the class will behave in different situations. -->

#1
phone_book = PhoneBook.new
phone_book.list # => []
<!-- #if no number will be an empty list/array -->

#2
phone_book = PhoneBook.new
phone_book.extract_numbers("0777700000000")
phone_book.list #=> ["07777000000"]
<!-- #it will return the number in the list -->

#3
phone_book = PhoneBook.new
phone_book.extract_numbers("I called 07777000000 today")
phone_book.list #=> ["07777000000"]
<!-- #if text contains a phone number want to extract that number-->

#4
phone_book = PhoneBook.new
phone_book.extract_numbers("My faves: 07777000000, 08777000000")
phone_book.list #=> ["07777000000", "08777000000"]
<!-- #if have a couple of numbers want both to appear. -->

#5
phone_book = PhoneBook.new
phone_book.extract_numbers("My faves: ")
phone_book.list # => []
<!-- #if have no number in string, list will be empty. -->

#6
phone_book = PhoneBook.new
phone_book.extract_numbers("Mine is 07777000000")
phone_book.extract_numbers("Sam is: 08777000000")
phone_book.list #=> ["07777000000", "08777000000"]
<!-- #if have a couple of numbers if multiple method calls want to track all numbers. -->

#7
phone_book = PhoneBook.new
phone_book.extract_numbers("Mine is 077770000")
phone_book.list # => []
<!-- #if too few digits in number, number won't appear in list -->

#8
phone_book = PhoneBook.new
phone_book.extract_numbers("Mine is 07777000000")
phone_book.extract_numbers("Sam is: 07777000000")
phone_book.list #=> ["07777000000"]
<!-- #no duplicate numbers in list -->

<!-- Encode each example as a test. You can add to the above list as you go.  -->

4. Implement the Behaviour
<!-- After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour. -->
