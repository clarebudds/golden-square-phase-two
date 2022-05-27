class TrackMusic
  def initialize
    @tracks = []
  end
  
  def list
    return @tracks
  end

  def add(track)
    @tracks << track
  end
end
  # # def initialize
  # #   @tracks = []
  # end

  # def add(track)
  #   @tracks << track
  # end
  
  # def list
  #   return @tracks
  # end

  # class TodoList
  #   def initialize
  #     @tasks = []
  #   end
  
  #   def add(task)
  #     @tasks << task
  #   end
  
  #   def complete(task)
  #     fail "No such task." unless @tasks.include?task
  #     @tasks.delete(task)
  #   end
    
  #   def list
  #     return @tasks
  #   end
  # end

