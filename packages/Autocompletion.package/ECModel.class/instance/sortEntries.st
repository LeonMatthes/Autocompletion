accessing
sortEntries

	entries sort: [:aEntry :bEntry | | aPriority bPriority |
		aPriority := aEntry matchNarrowSymbol: self narrowSymbol.
		bPriority := bEntry matchNarrowSymbol: self narrowSymbol.
		aPriority = bPriority
			ifTrue: [aEntry <= bEntry]
			ifFalse: [aPriority >= bPriority]]