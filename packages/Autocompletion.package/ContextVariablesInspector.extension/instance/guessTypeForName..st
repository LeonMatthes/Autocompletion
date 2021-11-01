*Autocompletion
guessTypeForName: aString

	| index |
	self doItContext ifNil: [^ nil].
	index := (self doItContext debuggerMap tempNamesForContext: self doItContext)
		indexOf: aString
		ifAbsent: [^ nil].
	^ (self doItContext tempAt: index) class