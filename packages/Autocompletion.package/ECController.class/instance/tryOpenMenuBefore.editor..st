keyboard
tryOpenMenuBefore: aKeyboardEvent editor: anEditor

	(self isAutocompletionTriggeredByUser: aKeyboardEvent)
		ifTrue: [self openMenuForCurrentEditor. ^ true].

	(self isAutocompletionTriggeredByText: aKeyboardEvent)
		ifTrue: [self openMenuForCurrentEditor. ^ false].
	
	(ECPreferences smartTab and: aKeyboardEvent keyCharacter = Character tab and: [aKeyboardEvent anyModifierKeyPressed not])
		ifTrue: [^ self smartTab: aKeyboardEvent].
	
	"^ self smartInput: aKeyboardEvent."
	^ false