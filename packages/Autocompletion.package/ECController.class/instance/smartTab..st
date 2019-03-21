keyboard
smartTab: aKeyboardEvent

	^ aKeyboardEvent shiftPressed
		ifTrue: [self reverseSmartTab]
		ifFalse: [self smartTab]