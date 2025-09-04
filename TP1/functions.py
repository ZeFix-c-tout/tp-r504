def puissance(a,b):
	if not type(a) is int:
		raise TypeError("Only integers are allowed")

	return(a**b)
