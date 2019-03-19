as yet unclassified
listsForPrefix: aString 
	|  prefixes |
	aString isEmpty ifTrue: [^ Array with: (OEntryList ofSize: numberofEntries)].
	prefixes := OrderedCollection with: aString first asLowercase asString.
	 
	aString size > 1 
			ifTrue: [prefixes add: ((aString first: 2) collect: [:e | e asLowercase])].
	^ prefixes collect: [:prefix | table 
		at: prefix
		ifAbsentPut: [ OEntryList ofSize: numberofEntries ]]