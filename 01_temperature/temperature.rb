 #Conversion des températures de Fahrenheit vers Celsius
def ftoc(temp)
	return (temp - 32.0 ) * 5.0 / 9.0		
end

#Conversion des températures de Celsius vers Fahrenheit
def ctof(temp) 
	return (temp * 9.0 / 5.0) + 32.0
end
