keyboard-testing
isAutocompleteKeyComboPressed: aKeyboardEvent

	^ aKeyboardEvent controlKeyPressed
		and: [self isSpacePress: aKeyboardEvent]