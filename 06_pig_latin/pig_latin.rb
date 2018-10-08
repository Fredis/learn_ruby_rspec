def wordtrans(word)
  if word[0] =~ /[aeiuoy]/ #si commence par voyelle
    return word += "ay"
  else
    i = 0
    cns = String.new
    while /[aeiuoy]/.match?(word[i]) == false
      cns += word[i]
      i += 1
    end
    if cns[cns.size - 1] =~ /[qQ]/ && word[cns.size] =~ /[uU]/
      cns += word[cns.size]
    end
    word.delete!(cns)
    return word + cns + "ay"
  end
end

def translate(str)
  if str.split(/\W+/).size != 1
    arr = str.split(/\W+/)
    ret = String.new
    arr.each do |value|
      ret += wordtrans(value) + ' '
    end
    return ret.rstrip
  else
    return wordtrans(str)
  end
end


  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * retain the punctuation from the original phrase