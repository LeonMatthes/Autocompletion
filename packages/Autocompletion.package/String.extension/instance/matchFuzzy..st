*Autocompletion
matchFuzzy: aString
	"Returns how good self matches the narrowString. 0 means not at all.
	Otherwise: the larger the value, the better the match."
	| myIndex otherIndex isSubstring |
	myIndex := otherIndex := 1.
	isSubstring := true.

	[myIndex <= self size and: [otherIndex <= aString size]]
		whileTrue: [
			((self at: myIndex) match: (aString at: otherIndex))
				ifTrue: [
					myIndex := myIndex + 1.
					otherIndex := otherIndex + 1.]
				ifFalse: [
					myIndex := myIndex + 1.
					otherIndex = 1 ifFalse: [isSubstring := false]]].
	
	otherIndex <= aString size
		ifTrue: [^ self noMatchScore].
	otherIndex = myIndex
		ifTrue: [
			^ aString size < self size
				ifTrue: [self frontMatchScore]
				ifFalse: [self exactMatchScore]].
	^ isSubstring
		ifTrue: [self substringMatchScore]
		ifFalse: [self fuzzyMatchScore * (1 - (myIndex / aString size))]