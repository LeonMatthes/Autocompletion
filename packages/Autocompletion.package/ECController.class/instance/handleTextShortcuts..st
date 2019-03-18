keyboard
handleTextShortcuts: aKeyboardEvent

	(self isAutocompletionTriggeredByUser: aKeyboardEvent)
		ifTrue: [self openMenuForCurrentEditor.
			^ true "key combo event handled"].

	(self isAutocompletionTriggeredByText: aKeyboardEvent)
		ifTrue: [self openMenuForCurrentEditor.
			^ false "further processing required (typing character)"].

	(ECPreferences smartTab and: aKeyboardEvent keyCharacter = Character tab and: [aKeyboardEvent anyModifierKeyPressed not])
		ifTrue: [^ self smartTab: aKeyboardEvent].

	^ self handleSmartInput: aKeyboardEvent