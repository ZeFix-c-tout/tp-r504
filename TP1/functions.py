def puissance(a,b):
	if not type(a) is int:
		raise TypeError("Only integers are allowed")
	if a == 0 and b < 0:
		print("ok")
	return(a**b)
