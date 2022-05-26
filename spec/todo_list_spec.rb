require "todo_list"

RSpec.describe TodoList do
  context "given no tasks" do
    it "has an empty list" do
      todo_list = TodoList.new
      expect(todo_list.list).to eq []
    end
  end

  context "given a task" do
    it "includes the task in the list" do
      todo_list = TodoList.new
      todo_list.add("Hoover the stairs") 
      expect(todo_list.list).to eq ["Hoover the stairs"]
    end
  end

  context "given two tasks" do
    it "includes both tasks in the list" do
      todo_list = TodoList.new
      todo_list.add("Hoover the stairs") 
      todo_list.add("Clean the car") 
      expect(todo_list.list).to eq ["Hoover the stairs", "Clean the car"]
    end
  end

  context "when we complete a task" do
    it "removes the task from the list" do
      todo_list = TodoList.new
      todo_list.add("Hoover the stairs") 
      todo_list.add("Clean the car") 
      todo_list.complete("Clean the car") 
      expect(todo_list.list).to eq ["Hoover the stairs"]
    end
  end

  context "when we try to complete a non-existent task" do
    it "fails" do
      todo_list = TodoList.new
      todo_list.add("Hoover the stairs") 
      expect{ todo_list.complete("Hoover the cat") }.to raise_error "No such task."
    end
  end
end