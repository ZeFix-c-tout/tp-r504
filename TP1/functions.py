def puissance(a,b):
	if not type(a) is int:
		raise TypeError("Only integers are allowed")

	elif a == -1 or b == -1:
		return ('La valeur doit être suppérieur à 0')
	else:
		return(a**b)
