require "pry"

class PasswordChecker
  def check_length(pw)
    if pw.length >= 7
      pw.length
    else
      pw.length
    end
  end
  def check_mixed_values (pw)
    reg = /^(?=.*\d)(?=.*([a-z]|[A-Z]))([\x20-\x7E]){8,40}$/

    if reg.match(pw)
      true
    else
      false
    end
  end

  def contains_name(pw)
     user = "1ronHack@gmail.com"
     domain = "gmail"

     if pw.include?(user) && pw.include?(domain)
         false
       else
         true
     end

   end
end
