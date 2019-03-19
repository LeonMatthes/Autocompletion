action
narrowWith: aString 
	self narrowString: aString.
	entries reset.
	self addToEntries: selectors