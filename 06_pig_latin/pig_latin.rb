def wordtrans(word)
  
  capitalized = 1 if word[0] =~ /[A-Z]/ #vérifie si la première lettre est une majuscule alors on ajoute un 1 à la variable capitalized
  if word[0] =~ /[aeiuoy]/ #si le mot commence par une voyelle
    return word += "ay" #ajout de "ay" à la fin du mot
  else #si le mot commence par une consonne
    i = 0
    consonnes = String.new
    while /[aeiuoy]/.match?(word[i]) == false #cette boucle vérifie que les premières lettres du mot sont bien des consonnes (ie ne sont pas des voyelles) et s'arrête sinon. Elle ajoute toutes les consonnes dans la variable cosonnes.
      consonnes += word[i]
      i += 1
    end
    if consonnes[consonnes.size - 1] =~ /[qQ]/ && word[consonnes.size] =~ /[uU]/ #si la variable consonnes se termine par [qQ] ET est suivi par [uU]
      consonnes += word[consonnes.size] #la variable consonnes récupère toutes les lettres jusqu'à [Uu]
    end
    word.delete!(consonnes) #on supprime du mot le premier bout de consonnes et dans le cas où ça s'applique la suite "[Qq][Uu]".
    word = word + consonnes + "ay" #on met la variable consonnes à la fin du mot et on ajoute "ay".
    if capitalized == 1 #si le mot commencait par une majuscule
      return word = word.capitalize #on tranforme la première lettre en majuscule
    else 
      return word
    end

  end
end

def translate(str)
  if str.split(/\W+/).size != 1 #On détermine s'il y a plus d'un mot dans le string.
    arr = str.split(/\W+/) #On stocke tous les mots dans un array.
    ret = String.new 
    arr.each do |value|
      ret += wordtrans(value) + ' ' #Pour chaque mot de l'array, on applique la méthode wordtrans au mot et on les met dans le string "ret", chaque fois séparés par un espace.
    end
    return ret.rstrip #Supprime le dernier espace du ret.
  else
    return wordtrans(str) #S'il y a qu'un mot on applique la méthode wordtrans au mot.
  end
end

translate("The quick, Brown Fox")