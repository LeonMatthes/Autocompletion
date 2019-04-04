keyboard-testing
isAutocompletionTriggeredByUser: aKeyboardEvent

	^ (self isAutocompleteKeyComboPressed: aKeyboardEvent)
		or: [self isAutocompletable and: [self isAutocompleteRequested: aKeyboardEvent]]