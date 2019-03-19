private-type-guessing
guessClassUnary: aNumber

	^ (self guessTypeOf: aNumber - 1) 
		ifNotNil: [ :type | type class ]