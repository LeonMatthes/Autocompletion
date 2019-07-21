private-type-guessing
guessTypeFromContext: aString

	| index |
	executionContext ifNil: [^ nil].
	index := (executionContext debuggerMap tempNamesForContext: executionContext)
			indexOf: aString
			ifAbsent: [^ nil].
	^ (executionContext tempAt: index) class