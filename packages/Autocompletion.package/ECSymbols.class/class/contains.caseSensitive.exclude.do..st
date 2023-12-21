accessing
contains: aString caseSensitive: aBoolean exclude: aCollection do: aBlock

	| separators |
	ECPreferences includeSelectors ifFalse: [^ self].

	separators := CharacterSet separators.
	Symbol allSymbolTablesDo: [:each | 
		((each indexOfAnyOf: separators startingAt: 1) = 0 and: [(aCollection includes: each) not]
			and: [(each includesSubstring: aString caseSensitive: aBoolean)
			and: [self isValidSelector: each]])
				ifTrue: [aBlock value: each]].