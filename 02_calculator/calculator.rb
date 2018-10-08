def add(first, second) #Méthode pour effectuer une addition
	return first + second
end

def subtract(first, second) #Méthode pour effectuer une soustraction
	return first - second
end

def sum(array) #Méthode pour effectuer la somme des valeurs dans un array
	result = 0.0
	array.each do |number|
		result = result + number
	end
	return result
end

def multiply (first, second) #Méthode pour effectuer une multiplication
	return first * second
end

def power(first, second) #Méthode pour calculer la puissance d'un nombre sur la base du second
	return first ** second
end

def factorial(number) #Méthode pour calculer la factorielle d'un nombre
  return 1 if number == 1 || number == 0
  return (number * factorial(number - 1))
end
