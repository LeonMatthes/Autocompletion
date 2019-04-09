accessing
sortEntries

	entries sort: [:aEntry :bEntry | | aPriority bPriority |
		aPriority := aEntry matchNarrowString: narrowString.
		bPriority := bEntry matchNarrowString: narrowString.
		aPriority = bPriority
			ifTrue: [aEntry <= bEntry]
			ifFalse: [aPriority >= bPriority]]