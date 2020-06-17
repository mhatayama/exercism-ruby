class PhoneNumber
  def self.clean(number)
    cleaned = number.delete("^0-9")
    cleaned = cleaned[1..10] if cleaned.length == 11 and cleaned[0] == "1"
    return cleaned if cleaned.length == 10 \
        and cleaned[0] =~ /[2-9]/ and cleaned[3] =~ /[2-9]/
    nil
  end
end