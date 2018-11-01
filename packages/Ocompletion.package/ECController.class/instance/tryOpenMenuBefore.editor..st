keyboard
tryOpenMenuBefore: aKeyboardEvent editor: anEditor

	| isSpaceKey controlKeyPressed keyCharacter commandKeyPressed |
	isSpaceKey := aKeyboardEvent keyCharacter = Character space.
	controlKeyPressed := aKeyboardEvent controlKeyPressed.
	commandKeyPressed := aKeyboardEvent commandKeyPressed.
	keyCharacter := aKeyboardEvent keyCharacter.
	(isSpaceKey & controlKeyPressed
		or: [keyCharacter = Character tab and: [self editor isCaretBehindChar and: [controlKeyPressed not]]])
			ifTrue: [self openMenuFor: self editor.
				^ true]
			ifFalse: [(self smartInput: aKeyboardEvent keyValue)
					ifNotNil: [^ true]].

	(controlKeyPressed not & commandKeyPressed not and: keyCharacter isAlphaNumeric and: [self editor isCaretBehindChar])
		ifTrue: [self openMenuFor: self editor.
			^ false].
	
	^ false