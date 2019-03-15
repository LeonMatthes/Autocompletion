keyboard-testing
isAutocompleteRequested: aKeyboardEvent

	^ (self isTabPressed: aKeyboardEvent)
		and: [aKeyboardEvent controlKeyPressed not]