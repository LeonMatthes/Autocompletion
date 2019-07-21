*Autocompletion
guessTypeForName: aString

	| index |
	index := self doItReceiver class instVarIndexFor: aString asString ifAbsent: [^ nil].
	^ (self doItReceiver instVarAt: index) class