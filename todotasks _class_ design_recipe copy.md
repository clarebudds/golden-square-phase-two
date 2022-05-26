Todo Tasks Class Design Recipe

1. Describe the Problem
<!-- Put or write the user story here. Add any clarifying notes you might have. -->

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

<!-- Don't worry about user input & output here. -->

2. Design the Class Interface
<!-- Include the initializer and public methods with all parameters and return values. -->

class TodoList
  def initializer
  end

  def add(task) 
  <!-- # task is a string representing an instruction  -->
  <!-- # returns nothing -->
  end

  def list
    <!-- # returns a list of the tasks added as strings -->
    <!-- # except the completed ones -->
  end

  def complete(task)
    <!-- # task is a string representing a task to mark complete -->
    <!-- # returns nothing -->
    <!-- # fails if the taks doesn't exist-->
  end
end 


3. Create Examples as Tests
<!--Make a list of examples of how the class will behave in different situations. -->

#1
todo_list = TodoList.new
todo_list.list # => []
<!-- #if no task will be an empty list-->

#2
todo_list = TodoList.new
todo_list.add("Hoover the stairs") 
todo_list.list # => ["Hoover the stairs"]
<!-- #if added a task will see the task in the list -->

#3
todo_list = TodoList.new
todo_list.add("Hoover the stairs") 
todo_list.add("Clean the car") 
todo_list.list # => ["Hoover the stairs", "Clean the car"]
<!-- #if added multiples tasks will see all the tasks in the list -->

#4
todo_list = TodoList.new
todo_list.add("Hoover the stairs") 
todo_list.add("Clean the car") 
todo_list.complete("Clean the car") 
todo_list.list # => ["Hoover the stairs"]
<!-- #if complete a task won't see it in the list anymore -->

#5
todo_list = TodoList.new
todo_list.add("Hoover the stairs") 
todo_list.add("Clean the car") 
todo_list.complete("Hoover the cat") 
todo_list.list # => fails "No such task."
<!-- #if try to complete a task that's not in the list, will get an error. -->

<!-- Encode each example as a test. You can add to the above list as you go.  -->

4. Implement the Behaviour
<!-- After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour. -->
