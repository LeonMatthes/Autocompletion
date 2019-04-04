keyboard-testing
isSimpleKeyPress: aKeyboardEvent

	^ aKeyboardEvent controlKeyPressed not
		and: [aKeyboardEvent commandKeyPressed not]
		and: [aKeyboardEvent keyCharacter isAlphaNumeric]