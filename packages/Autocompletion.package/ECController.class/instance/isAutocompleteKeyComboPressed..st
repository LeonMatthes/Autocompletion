keyboard-testing
isAutocompleteKeyComboPressed: aKeyboardEvent

	^ aKeyboardEvent controlKeyPressed
		and: [self isSpacePressed: aKeyboardEvent]