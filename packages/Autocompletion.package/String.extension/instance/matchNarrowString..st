*Autocompletion
matchNarrowString: aString
	"Returns how good self matches the narrowString. 0 means not at all.
	Otherwise: the larger the value, the better the match."
	| exactMatch frontMatch substringMatch noMatch |
	exactMatch := 20.
	frontMatch := 10.
	substringMatch := 5.
	noMatch := 0.
	
	aString isEmpty ifTrue: [^ frontMatch].
	self = aString asString ifTrue: [^ exactMatch].
	
	^ ECPreferences matchSubStrings
		ifFalse: [(self beginsWith: aString) ifTrue: [frontMatch] ifFalse: [noMatch]]
		ifTrue: [| position | position := (self findString: aString startingAt: 1 caseSensitive: ECPreferences caseSensitive).
			position caseOf: {
				[0] -> [noMatch].
				[1] -> [frontMatch]
			} otherwise: [substringMatch]]