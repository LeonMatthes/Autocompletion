accessing
addToEntries: anOrderedCollection

	| newEntries |
	newEntries := anOrderedCollection reject: [ :entry | 
		(entry matchNarrowString: narrowString) = 0].
	
	entries addAll: newEntries.
	self sortEntries.