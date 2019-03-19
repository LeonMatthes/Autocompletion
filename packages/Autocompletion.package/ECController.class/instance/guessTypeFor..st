type guessing
guessTypeFor: aString 

	^self model ifNotNil: [ :theModel |
		theModel guessTypeForName: aString ]