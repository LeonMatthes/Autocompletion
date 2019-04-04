keyboard-testing
isAutocompletionTriggeredByText: aKeyboardEvent

	^ self isAutocompletable
		and: [self editor hasSelection not]
		and: [self isSimpleKeyPress: aKeyboardEvent]