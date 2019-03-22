smart tabbing
smartTab: aKeyboardEvent

	^ (self editor hasCaret and: [self isAtBeginningOfLine])
		ifTrue: [false] 
		ifFalse: [aKeyboardEvent shiftPressed
			ifTrue: [self reverseSmartTab]
			ifFalse: [self smartTab]]