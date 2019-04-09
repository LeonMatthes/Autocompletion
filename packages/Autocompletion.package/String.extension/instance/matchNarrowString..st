*Autocompletion
matchNarrowString: aString
	"Returns how good self matches the narrowString. 0 means not at all.
	Otherwise: the larger the value, the better the match."
	aString isEmpty ifTrue: [^ self frontMatchScore].
	self size < aString size ifTrue: [^ self noMatchScore].
	
	^ ECPreferences fuzzyMatching
		ifTrue: [self matchFuzzy: aString]
		ifFalse: [self matchFrontOnly: aString]