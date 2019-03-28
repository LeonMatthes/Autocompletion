keyboard-testing
isSmartTabPress: aKeyboardEvent

	^ (self isTabPress: aKeyboardEvent)
		and: [aKeyboardEvent anyModifierKeyPressed not]