*Autocompletion
matchFrontOnly: aString
	| matched |
	matched := ECPreferences caseSensitive
		ifTrue: [self beginsWith: aString]
		ifFalse: [self asLowercase beginsWith: aString asLowercase].
	^ matched
		ifTrue: [aString size = self size 
			ifTrue: [self exactMatchScore]
			ifFalse: [self frontMatchScore]]
		ifFalse: [self noMatchScore]