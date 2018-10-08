#Création d'une méthode qui détermine quel est le plus grand nombre des 3 nombres donnés en argument + condition s'il y a un nil.
def who_is_bigger(a, b, c)
	if a.nil? || c.nil?
		return "nil detected"
	elsif a > b && a > c
		return "a is bigger"
	elsif b > a && b > c
		return "b is bigger"
	elsif c > a && c > b
		return "c is bigger"
	end
end

#Création d'une méthode qui renverse le sens des lettres, les met en majuscule et supprime les lettres L, T et A.
def reverse_upcase_noLTA(string)
	string.reverse!.upcase!
	string.delete!("L")
	string.delete!("T")
	string.delete!("A")
	return string
end

#Création d'une méthode qui retourne "true" si l'array donné en argument contient "42" et "false" sinon.
def array_42(array)
	return array.include? 42
end

#Création d'une méthode magique qui supprime les arrays dans l'array donné en argument (tout en gardant les valeurs), qui les trie par ordre croissant, qui supprime les doublons, 
#qui multiplie toutes les valeurs par 2 et qui supprime tous les multiples de 3.
def magic_array(array)
	return array.flatten.sort.uniq.collect { |value| value * 2 }.select { |value| value%3 != 0}
end

