*Autocompletion
match: anotherCharacter

	^ ECPreferences caseSensitive
		ifTrue: [self = anotherCharacter]
		ifFalse: [self asLowercase = anotherCharacter asLowercase]