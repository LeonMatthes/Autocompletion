*Autocompletion
guessTypeForName: aString 
	| binding |
	bindings ifNotNil: 
		[ binding := bindings 
			at: aString
			ifAbsent: [  ].
		binding ifNotNil: [ ^ binding class ] ].
	^ super guessTypeForName: aString