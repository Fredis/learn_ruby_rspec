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
	return first*second
end

def power(first, second) #Méthode pour calculer la puissance d'un nombre sur la base du second
	return first**second
end

def factorial(number) #Méthode pour calculer la factorielle d'un nombre

	if number == 0 #Condition pour gérer le nombre 0
		return result = 1
	end
	
	result = number
	numberCache = number
	number.times do
		numberCache -= 1
		if numberCache != 0
			result = result*numberCache
		end
	end
	return result

end