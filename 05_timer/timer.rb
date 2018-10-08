#Création d'une méthode qui affiche le nombre de secondes donné en argument sous un format Time par défaut.
#Ensuite on applique la méthode UTC pour mettre le compteur à 0 (sinon une heure est rajoutée)
#Affiche sous format HH:MM:SS

def time_string(sec)
  return Time.at(sec).utc.strftime("%H:%M:%S")
end
