#Méthode pour effectuer une addition
def add(first, second)
	return first + second
end

#Méthode pour effectuer une soustraction
def subtract(first, second) 
	return first - second
end

#Méthode pour effectuer la somme des valeurs dans un array
def sum(array) 
	result = 0.0
	array.each do |number|
		result = result + number
	end
	return result
end

#Méthode pour effectuer une multiplication
def multiply (first, second) 
	return first * second
end

#Méthode pour calculer la puissance d'un nombre sur la base du second
def power(first, second) 
	return first ** second
end

#Méthode pour calculer la factorielle d'un nombre
def factorial(number) 
  return 1 if number == 1 || number == 0
  (1..number).inject(:*)
end
