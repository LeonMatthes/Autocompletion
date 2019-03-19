accessing
addToEntries: anOrderedCollection

	| frontMatching innerMatching caseSensitive matchSubStrings |
	caseSensitive := ECPreferences caseSensitive.
	matchSubStrings := ECPreferences matchSubStrings.
	frontMatching := OrderedCollection new.
	innerMatching := OrderedCollection new.
	anOrderedCollection do: [ :each |
		| index |
		index := each contents 
			indexOfSubStringWithEmpty: narrowString
			caseSensitive: caseSensitive.
		index = 1
			ifTrue: [ frontMatching add: each ]
			ifFalse: [
				(matchSubStrings and: [ index > 1 ]) ifTrue: [
					innerMatching add: each ] ] ].

	innerMatching sort.
	frontMatching sort.
	entries
		 addAll: frontMatching;
		 addAll: innerMatching