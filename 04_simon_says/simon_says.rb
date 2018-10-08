#write your code here
def echo(word)
return word
end

def shout(word)
return word.upcase
end 

def repeat(word,numb=2)
return ("#{word} "*numb).rstrip
end

def start_of_word(word,numb)
word[0,numb]
end

def first_word(string)
string.split.first 
end

def titleize(string)
title = String.new
counter = 0
array = string.split(/\W+/)
array[0].capitalize!
array.each do |value|
    value.capitalize! if value.size > 3
    title = title + value + " "
    counter += 1
end 
return title.rstrip
end 

