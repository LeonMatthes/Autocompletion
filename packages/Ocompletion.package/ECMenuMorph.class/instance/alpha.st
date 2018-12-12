accessing
alpha
	"Do some special error handling in case we try to draw while no alpha has been calculated.
	This is not strictly neccessary, but nil in alpha will hard-crash the image!"
	^ alpha isNumber 
		ifTrue: [alpha]
		ifFalse: [1]