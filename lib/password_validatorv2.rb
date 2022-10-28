# Valid passowords are
# - 8 or more characters
# - include at least one of these characters: !, @, $, %, &
a = ["!", "@", "$", "%", "&"]

def valid?(password)
     if password.length > 7 && password.include?(a)
    then true
    else
        false
    end
end