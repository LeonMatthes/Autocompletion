*Autocompletion
guessTypeForName: aString

	| index |
	self doItContext ifNil: [^ super guessTypeForName: aString].
	index := (self doItContext debuggerMap tempNamesForContext: self doItContext)
		indexOf: aString
		ifAbsent: [^ super guessTypeForName: aString].
	^ (self doItContext tempAt: index) class