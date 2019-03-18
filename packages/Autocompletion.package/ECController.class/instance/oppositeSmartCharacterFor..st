accessing
oppositeSmartCharacterFor: aCharacter

	^ ECPreferences smartCharactersMapping
		at: aCharacter
		ifAbsent: [nil]