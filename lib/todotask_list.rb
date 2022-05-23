def todotask_list(text)
  if text.include? "#TODO"
    return true
  else 
    return false
  end
end