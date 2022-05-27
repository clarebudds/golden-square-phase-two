require 'date'

class SocialOrganiser
  def initialize
    @friend_evenings = {}
  end

  def enter_evening_when_friend_is_free(friend, evening)
    if @friend_evenings[evening].nil?
      @friend_evenings[evening] = []
    end 

    @friend_evenings[evening] << friend
  end

  def enter_evening_when_I_am_free(evening)
    @evening_when_I_am_free = evening
  end
  
  def list_who_is_free_on_evening(evening)
    if @friend_evenings[evening].nil?
      return []
    end
      
    return @friend_evenings[evening]
  end

  def get_evening_most_people_are_free_and_myself
    #loop through all the dates when friends are available
    @friend_evenings.keys.each do |evening_friends_are_free|
      # if this evening is the same as the evening I'm free
      if evening_friends_are_free == @evening_when_I_am_free
        return evening_friends_are_free
      end
    end
    # use implicit return, the return nil below is outside the if block above, 
    # if used it in if black it would have stopped the execution of the loop
    return nil
  end
end

#for code starting on line 17 Leo refactors as:
#   def list_who_is_free_on_evening(evening)
#     return [@friend_evenings[evening] || [])
#   end

# line28 explanation: if @friend_evenings[evening] is nil 
# then [] value will be used otherwise will return @friend_evenings[evening] value
# But Leo said it's often best to prioritise clarity over conciseness