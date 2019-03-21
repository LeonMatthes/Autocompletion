keyboard
tryOpenMenuBefore: aKeyboardEvent editor: anEditor

	| isSpaceKey controlKeyPressed keyCharacter commandKeyPressed |
	isSpaceKey := aKeyboardEvent keyCharacter = Character space.
	controlKeyPressed := aKeyboardEvent controlKeyPressed.
	commandKeyPressed := aKeyboardEvent commandKeyPressed.
	keyCharacter := aKeyboardEvent keyCharacter.
	(isSpaceKey & controlKeyPressed)
			ifTrue: [self openMenuFor: self editor.
				^ true]
			ifFalse: [(self smartInput: aKeyboardEvent keyValue)
					ifNotNil: [^ true]].

	(self editorWantsMenu and: [self isSimpleKeyPress: aKeyboardEvent])
		ifTrue: [self openMenuFor: self editor.
			^ false].
	
	(keyCharacter = Character tab and: [aKeyboardEvent anyModifierKeyPressed not])
		ifTrue: [^ self smartTab: aKeyboardEvent].
	
	^ false