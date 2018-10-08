#Création d'une méthode qui retourne le mot donné en argument de la méthode.
def echo(word)
    return word
end

#Création d'une méthode qui retourne le mot donné en argument de la méthode en le mettant en majuscule.
def shout(word)
    return word.upcase
end 

#Création d'une méthode qui répète le mot donné en argument autant de fois que le nombre donné en argument. S'il n'y a pas de nombre donné, ça répète par défaut deux fois le mot donné.
def repeat(word,numb=2)
    return ("#{word} "*numb).rstrip
end

#Création d'une méthode qui retourne les numb (numb étant donné en argument) premiers caractères du mot donné en argument.
def start_of_word(word,numb)
    word[0,numb]
end

#Création d'une méthode qui retourne le premier mot du string donné en argument.
def first_word(string)
    string.split.first 
end

#Création d'une méthode qui met des majuscules à la premières lettre de tous les mots du string donné en argument, excepté pour les petits mots.
def titleize(string)
    title = String.new
    array = string.split(/\W+/)
    array[0].capitalize!
    array.each do |value|
        value.capitalize! if value.size > 3
        title = title + value + " "
    end 
    return title.rstrip
end 

