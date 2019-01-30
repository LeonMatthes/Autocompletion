as yet unclassified
contains: aString caseSensitive: aBoolean do: aBlock 

	| separators |
	separators := CharacterSet separators.
	Symbol allSymbolTablesDo: [ :each | 
		((each indexOfAnyOf: separators startingAt: 1) = 0 and: [
			each 
				includesSubstring: aString
				caseSensitive: aBoolean]) ifTrue: [ aBlock value: each ] ]