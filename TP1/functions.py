def puissance(a,b):
	if not type(a) is int:
		raise TypeError("Only integers are allowed")

	elif a==0 or b==0:
		return ('La valeur doit être suppérieur à 0')
	else:
		return(a**b)
