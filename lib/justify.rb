require "justify/version"

class String
  def justify(len = 80)
    unless self.length < len

      words = self.gsub("\n", " ").scan(/[\w.-]+/)
      actual_len = 0
      output = ""
      words.each do |w|
        output += w
        actual_len += w.length
        if actual_len >= len
          output += "\n"
          actual_len = 0
        else
          output += " "
        end
      end
      return output
    else
      self
    end

  end
end
