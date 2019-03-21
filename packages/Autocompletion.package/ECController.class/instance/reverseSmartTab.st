keyboard
reverseSmartTab

	| jumpIndex searchText selectionStart |
	selectionStart := self editor selectionInterval start.
	searchText := (self editor text copyFrom: 1 to: selectionStart - 1) reversed.
	jumpIndex := searchText findString: ECPreferences smartTabString startingAt: 1.

	^ jumpIndex > 0
		ifTrue: [self editor 
			selectFrom: selectionStart - jumpIndex - ECPreferences smartTabString size + 1
			to: selectionStart - jumpIndex ];
		yourself