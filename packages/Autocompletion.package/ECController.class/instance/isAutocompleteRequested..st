keyboard-testing
isAutocompleteRequested: aKeyboardEvent

	^ (self isTabPress: aKeyboardEvent)
		and: [aKeyboardEvent anyModifierKeyPressed not]
		and: [aKeyboardEvent shiftPressed not]