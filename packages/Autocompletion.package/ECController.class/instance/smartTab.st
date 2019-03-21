smart tabbing
smartTab

	| jumpIndex |
	jumpIndex := self editor text
		findString: ECPreferences smartTabString
		startingAt: self editor selectionInterval stop.
	
	^ jumpIndex > 0
		ifTrue: [self editor 
					selectFrom: jumpIndex 
					to: jumpIndex + ECPreferences smartTabString size - 1];
		yourself