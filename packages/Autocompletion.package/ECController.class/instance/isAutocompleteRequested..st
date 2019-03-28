keyboard-testing
isAutocompleteRequested: aKeyboardEvent

	^ (self isTabPress: aKeyboardEvent)
		and: [aKeyboardEvent controlKeyPressed not]