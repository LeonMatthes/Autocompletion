keyboard
handleSmartInput: aKeyboardEvent 

	(ECPreferences smartTab
		and: [self isSmartTabPress: aKeyboardEvent])
		ifTrue: [^ self smartTab: aKeyboardEvent].

	(ECPreferences smartBackspace
		and: [self isBackspacePress: aKeyboardEvent])
		ifTrue: [^ self handleSmartBackspace].

	ECPreferences smartCharacters
		ifTrue: [^ self handleSmartCharacter: aKeyboardEvent].

	^ false