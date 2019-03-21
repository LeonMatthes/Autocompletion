smart tabbing
smartTab: aKeyboardEvent

	^ self isAtBeginningOfLine
		ifTrue: [false] 
		ifFalse: [aKeyboardEvent shiftPressed
			ifTrue: [self reverseSmartTab]
			ifFalse: [self smartTab]]