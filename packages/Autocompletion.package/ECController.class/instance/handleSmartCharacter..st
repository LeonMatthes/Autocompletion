keyboard
handleSmartCharacter: aKeyboardEvent

	^ (self smartCharacter: aKeyboardEvent keyCharacter)
		ifNil: [false]
		ifNotNil: [:r|r]