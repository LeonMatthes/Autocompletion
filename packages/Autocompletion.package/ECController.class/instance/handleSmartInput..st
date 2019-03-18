keyboard
handleSmartInput: aKeyboardEvent 

	ECPreferences smartCharacters ifFalse: [ ^false ].

	^ (self isBackspacePress: aKeyboardEvent)
		ifTrue: [self handleSmartBackspace]
		ifFalse:  [self handleSmartCharacter: aKeyboardEvent]