*Autocompletion
guessTypeForName: aString

	| index |
	self doItContext ifNotNil: [
		index := (self doItContext debuggerMap tempNamesForContext: self doItContext)
			indexOf: aString
			ifAbsent: [].
		index ifNotNil: [
			^ (self doItContext tempAt: index) class]].
	index := self doItReceiver class instVarIndexFor: aString asString ifAbsent: [^ nil].
	^ (self doItReceiver instVarAt: index) class