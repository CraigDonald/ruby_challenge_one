# Valid passowords are
# - 8 or more characters
# - include at least one of these characters: !, @, $, %, &

=begin
    
rescue => exception
    
    Initial Attempt
end
def valid?(password)
     if password.length > 7 && password.include?("!") || password.length > 7 && password.include?("@") || password.length > 7 && password.include?("$") || password.length > 7 && password.include?("%") || password.length > 7 && password.include?("&")
    
    then true
    else
        false
    end
end
=end

# Second Refactor



def sufficient_length?(password)
    # this password.length > 7 will evaluate to true or false
    return password.length > 7
end

required_chars = /[!@$%&]/

def special_chars_included?(password)
  # `/[!@$%&]/` is the regex
  # it matches (detects) any of the 5 special characters
  if password =~ required_chars
    return true
  else
    return false
  end
end

  def valid?(password)
    if sufficient_length?(password) && special_chars_included?(password)
        return true
    else
        return false
    end
end

def valid_weak?(password)
    if special_chars_included?(password)
      return true
    else
      return false
    end
  end

