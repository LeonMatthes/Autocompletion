accessing
addToEntries: anOrderedCollection

	| newEntries narrowSymbol |
	narrowSymbol := narrowString asSymbol.
	newEntries := anOrderedCollection reject: [ :entry | 
		(entry matchNarrowSymbol: narrowSymbol) = 0].
	
	entries addAll: newEntries.
	self sortEntries.